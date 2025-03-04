Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3706A207DF9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741117734; cv=none; b=OmWOUn+If0YPek8dLyiQt1U4t1i7/IQ75cWjAj594PHCzpxQ9JLzIutuCz6fQgWH2mc95xli/BnojxYaeQb5L2gAAVl59nONEV9dFZckmrTAVRnQOee8Qei/MdDu2gIcbwy7oea/ZmLG1hxiCwZAFPopA7hwaY1WofnjU3QpMGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741117734; c=relaxed/simple;
	bh=wmcfxMDjuk3DNs5W1urDiYjY2jSnKQBqKF54OnXMSM4=;
	h=To:Subject:From:Message-Id:Date; b=ufH82O8XBVwjbwFZb9AdQmMVr+TToeNALAwhFxJswX2BcEZBqZGF9nZI6ffqx9fVZGnPSZq2Lqjh5m9v1QxXP6yiVGwBANK+ykj0vRsDUomy4YLGPrbypyV7ZsutCQXVFkU1A1GedYQ9uUzM0kgqCMnTl+D/S3G+lnPs0rucjMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQ2L2ndp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQ2L2ndp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D1FC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741117733;
	bh=wmcfxMDjuk3DNs5W1urDiYjY2jSnKQBqKF54OnXMSM4=;
	h=To:Subject:From:Date:From;
	b=PQ2L2ndpsLRriNpBwxZeqz37rBPcyTNnJofRmM5yxsB9EoKaVeSiyq2ue0k4RykM6
	 RZ4i7lTC2kfo1amLcLtendiPix3JgcysM5o+cnEwyUW7ZgyqkkzNLkmuorPdWdQgRr
	 fvMtNjUlJNveHjBuvUox2wEZy5bwfx6a9YI8rqzIKfKs2S0ngz0qmmBDItjzR+MVKH
	 qxkgCweB602oTWx2seG0Dfh2idVnLb5jOFw170PgAH99VaDi3XvsJCOPW1STf05wW+
	 ijOgd1+Os5pAy+uOCq02dEyRNU+TOyqD4CQQbpfUAp6T2FuRxrk7fONMfc1VvKt3ly
	 iGcZq9eSMnBxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACFFC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174111773362.14599.15546985397989628334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a57faccae52d12cb9a93230271696eb964148ca3772021cb5c5db04c62f0f5f
Date: Tue, 04 Mar 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741117733
