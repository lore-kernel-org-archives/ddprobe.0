Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3211F236B
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744651194; cv=none; b=LFNxE7MKJ5iPCrvo7QrfQQ91eEEDnEZZMsU0m0lBHMfmie3+p3QAv7MHgbHEzW9pbkVia+vWuOcl5WuW7q+Lpax/CAgqpqhc01DvlCIAXkEGRcCYuHJpNAymp7h1iqb9WqNxfQxmQ8aCbhQqQibb/oefhB2exnmcvFA0wU3FO3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744651194; c=relaxed/simple;
	bh=3n02PDM6fGMD0euzDe1BpJqx6jQsLOlvly3IkHswUCc=;
	h=To:Subject:From:Message-Id:Date; b=FG3AW9YJigdJ1esO60cmQxwvPJVPak3z9CUedNFEuNhV9InRPRbuxAco0VBYGNid5gVvyTv8HKWa2PC1IxCyYCvWlIrw0FgMW+TklhOfIu/tkNJdcCvsNARvx1aNgXeRdQSAB3pPfj0yrWZhFBUid1+vfWoKIP8gLXttPLYRxhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRg0mgGA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRg0mgGA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B784DC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744651193;
	bh=3n02PDM6fGMD0euzDe1BpJqx6jQsLOlvly3IkHswUCc=;
	h=To:Subject:From:Date:From;
	b=MRg0mgGAmj6Mx2cd3UdaRNakT+BjqkUc89AeLEfmsVsH6jqPO61NWy0OwnzH4s/RT
	 bQf8FhCr9FF/b/7pxCU79lExggVdVNMOso+imvYWnXDVp1a4NiM/jPDNjEtEoeeKR4
	 opCrOIm3P25aiE3OVA+g8H0jUKrCpGlCyEWOdRI2l7GXnRXwfdiO+3VwyHUYxBWsRA
	 4bty72V5wJ9nwUbECNm2I90nClzKX+WmbxEAVodOw1n72y8UjgLTtsK2dVa3jrghQy
	 XKB9wJotdxxcMyy5XjJ0bf6dmeIxBc3DzKSct84xgKFeyAtQEW1ZSukTAJRujlseGd
	 zsZuIOEfEuWxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E00DC369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465119361.14829.14711641641389492863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0847f3d2991f87a9b05bb910ee390603ac428a13d507032ff49134e0726a83f
Date: Mon, 14 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744651193
