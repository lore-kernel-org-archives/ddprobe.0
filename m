Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA60E1F03C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 08:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739262295; cv=none; b=qJjsNgRv57xY7kZKvmyrZ3Q/Gf2ix8sAa0TjfF7dHZtkcoTyhnilwXFKVocrWZR8IFd1dfkwcTuu0ZSTjekVmdPHxwLfXnOTIAKnge5iSL2man2wOICHQaa+KvUBKfYYuorXEQyrp3j23XFdvFVeuV1ZGwke7zVikt6VKpuhD5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739262295; c=relaxed/simple;
	bh=spjiPWEfJBWs2pe2bgWeyNsY4Tfm077t1hRRfJHdANE=;
	h=To:Subject:From:Message-Id:Date; b=O+OZL1s/WZnTHTrjzwV8dZNjZuv3LWoM5jHymGSAeU2a1L6MicUKiOJZz9Bpn5bG9s+BIT5PQB8iSaPnit5ADQUB3CbFAgG/GXXKn3dWtBZT9cVd061vf52gQ7nBcYdHokSqPXN/IBe/OB5w3ylpw2N2oppLDG5+rb4tUAnzAlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxaQ1JDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxaQ1JDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B0EFC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 08:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739262295;
	bh=spjiPWEfJBWs2pe2bgWeyNsY4Tfm077t1hRRfJHdANE=;
	h=To:Subject:From:Date:From;
	b=bxaQ1JDYfIW2jbF9oRLv7t7m57QDe+QkE9izrz7yBLiuvi6x7U2ZMXKK2kvBGxhOM
	 JEeqe5O7I28QMsSev/siwPSYu685XeXG24n8Mp4+cBgpvx8aw+7cqXo4FWKmbw6giw
	 1+2ywJkovXuAT1mi9DXM9nq9w5GNFQjaMvYxfX32wwHq5gGroDgw9InJCHYotVgqQk
	 nFzIa/HCZas9WWsrlMt2mn5By36i50DLF1PJ4D2ReO4XL6VPitkRdN9Sz6dhgB2/XY
	 PO8KSMv5njC9cWdTYpNKYqsd9HgZ4FUhLBq8uuJaM5yJVE3iLNU10xaKlLhAquGx1M
	 Jyir/lG0u0Hfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8833FC021A1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 08:24:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173926229439.12879.3541208361085211617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5831bc179bb79a46486f6a69658e8c6541f4079f01273fa456385dd2459ab2
Date: Tue, 11 Feb 2025 08:24:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739262294
