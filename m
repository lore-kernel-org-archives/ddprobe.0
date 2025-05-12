Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310F625745A
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747091994; cv=none; b=kjl5YKnrziGMCAdQ4fXJgQJFmn5k3sEguhDkr7hbszXxXRRMZNr6ZN+KcSX6ynV0UoFUoyHKM9aL0bKtoDykmq3QnuxJiOKVR0fm0Z1WLrX9d2xhYiKEJvqwkjraYtyzwMSyTBdkWVXyuQ5+QLs28Zi6LROsZkWa1rhT+b3PSQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747091994; c=relaxed/simple;
	bh=6z/2Dvo5ERpEMkM1shJM+FeRDqmgm1DUCtVM25/SniE=;
	h=To:Subject:From:Message-Id:Date; b=O6wXOjLi3z+OYdbNy5T8oDSQMY8vvLWMtaWlMnj4zat7F5lvQivNVbDilvazc2YYmIq5ODr41UJ9bFjFSmC+2lX9S/rp2vCWV5A1z0BoePVzWMJaT+FihmmveRiszcjPwpPnDJP2qIw3oFJ3ofYzBtS2T2JQ1CrhMjaJbJXTEOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TC9c0T38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TC9c0T38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A388AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747091993;
	bh=6z/2Dvo5ERpEMkM1shJM+FeRDqmgm1DUCtVM25/SniE=;
	h=To:Subject:From:Date:From;
	b=TC9c0T387M514MYaTO9Z0YyrRDNnkBXD1mQbHW41ud2kmjTq+/YYMHZheRITGEniM
	 iIpfddFD5/YA4AMGFR7t7oa+/bHJCkEOYCBbjh1fAP/SvS4iegpEQvwW8k0vbMX6dc
	 5d5AGZibKm3Mm9j025hm5yEBM7/PZ5BVDG9M55cqiaC6TmPbsMCrbt8JPeVUDd9G2O
	 pfIm5cWVkRLgaEfkpbAF/voJVdlbLHBTqX5jUlEql8KqIcaUmO+8Ptpj5ZXftUT+oj
	 ZolnmAWS9iWO3oqqK6A7KDy/JM0DOD/uMzHeg4yakS7ZZpzG72GpCRoV6Fdi4se8KZ
	 mCQsT8pHPOTHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E252C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709199357.7081.1510179287563413856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7eeae743907d50428a78447da91df0578d1076856cb468c82aedf8fd267ce9
Date: Mon, 12 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747091993
