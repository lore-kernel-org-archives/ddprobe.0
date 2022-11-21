Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EDB63D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7EEC433D7
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669053654;
	bh=RHjNsz8gXTmQGR7cb1NiuK0x2Y1hNaIbAuojs8Pmb6w=;
	h=To:Subject:From:Date:From;
	b=sj4643vM1fx6nRVVbAw6x92iRIL9yLfSqkJxISWqbfmSQ/EfvAVqhZF1vgXyNYnie
	 Sauas8GR+xoCa9iAWrTm3RyGCgaGMRE8lshBIvRWFyV6kQ3R3bWulyasdDpbXGJial
	 ai0m5fHmxoI0aNQwXy2rPYNGwcBMVOj+w9LwxD2/q4QKdTEMPHRTA+9eeSyPp0GbhG
	 LXHGGpb94vJM76bnDcSShO9ecTTO7NoR40UWSOAGeTufc1CT8u1h1SRRHDkwktiDNn
	 gHIOr2zzWR5bdxaVPvevjEbA64hR1q1F6QNDC8gS2zlBBV+Zx1DQ1BGRKonGOtx/Qa
	 R9Zy9GIH55t6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59FD7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905365436.11745.11075910388138905654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8a21ce2606a6ff289625b5e67ab60848c2a2e7dd6dc23dc3c600388df9fb4f
Date: Mon, 21 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669053654
