Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699C01C6FEC
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743724794; cv=none; b=L0ytq3tvJqj+rb2KOuWLnVAVfPvLTe1sL9C/EZeBEaSZT1YWB14bIrb0dLffZId6KWPNOijISKjYjaCOgbQ+ID+o1ONPN1QvWyYKoKMIYEcCAgSHvCHKaj2s6G/dhiOJ/RgOR7I571mQCfEp91N2VcbLJR9TdH+J18PS6g/rrAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743724794; c=relaxed/simple;
	bh=Uw8G1AmskWWEhkiw0aHAVhOTi/9jk9wkL973QpaI0Bc=;
	h=To:Subject:From:Message-Id:Date; b=O2ApHBquN0/5zo9r3gBPu4cDYafzHTAOfeuRJ4l2w0YUY+xtSebmFao0JNZCRXUCPFEVd3AMJtvGiX4XMYPVgQsFBmmWdcwQWL2CaxTGMGkQeBL5CULqms5vI59KnbSxsQ4vPj5q/LFhuQ0GTZmuTQVwbQujoHVvHHLzVcOgfe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ns2Jh4xv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ns2Jh4xv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E39C4CEE5
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743724793;
	bh=Uw8G1AmskWWEhkiw0aHAVhOTi/9jk9wkL973QpaI0Bc=;
	h=To:Subject:From:Date:From;
	b=Ns2Jh4xv6t5s/M+NOEJs/Hez3r+uJm8Gda/q0cuzyYpYcz3r8HPU2jYmKv/dvv2Hn
	 wOc36f6zexum5BdfrdrDp6MkkcCHkLqlnXUFPJTLsh4wPrvx10LL3iVm3QUA10j5pZ
	 j6HnicJwEzRjTHsKf8FFIVQpJcnqitfAZscspNfMFrtpaQIZ4kDl838GluIfwGoXbI
	 wVFKvUQq2h2V8DEdOO04FG8cHX0iDOV70CkCykTxmPwM/BoFuStLiAgct8TmrRr3UX
	 jXl0BHqnr5HPSwHAn/mIeo6HtDuznYkKH6ZuOT8O+y2lZwwkRBwFHEdmE+YyLDEBK3
	 Y4ObF4KI6ZlFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A5DC3601A
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372479358.3145.9285741259713261958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a5bc6de517de9f01908a2742c0c58afa9ef9db750879c416e1ddc94abeac1e
Date: Thu, 03 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743724793
