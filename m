Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA3734F462
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778427634; cv=none; b=iS+d/l3ciUsh9E2hA2jgi7tkMTaFxXB5FQHD6hP89eROyNShZR/GXwh5fgAB2viNn+1D3nvE5fDcS39sUSA+PEA+mcn3Y+m0xsEtN5HJk7Ssnkjh9suZAfdAh09E305mRM3loC8cRy1ec/OLgL8HaCn2XUetWioUoOU/qhKBYAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778427634; c=relaxed/simple;
	bh=WgFQ9NtQ+JejJ1RF6eb454EHt/bax/1wGFMnOkps9Vs=;
	h=To:Subject:From:Message-Id:Date; b=E0TxC/0+LXKxQodsViqcCJiyPw8fsiRd/Ol3mFZdbzzDlMUB1I29cHALLeEKFAe6Rb0yOL86wYVLkU91jb8tt4v2DkYmc+B9cKq7g1K7pU5BIDlE5vCigq+ApUJ+hsF2yYdkWaArz00jKhF2nTy6rdgKcfYeSaf/7sIGR6w2Ydw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5YaUeh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5YaUeh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C646BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778427633;
	bh=WgFQ9NtQ+JejJ1RF6eb454EHt/bax/1wGFMnOkps9Vs=;
	h=To:Subject:From:Date:From;
	b=B5YaUeh2BXiyNrfBPJn8Vap+K7BeJPqmqkIL50OrvHmKBiu0xX+q8y3fYcTQF8TeW
	 mu6nz7Fo1wl2anyQ4VnzZ6/RgFPyTtvn08NoG/Uy5OtYACHvmKIGZtkkVIM9mSatJy
	 wtklO2PYMDAvVPc5RfCXrmkSlp1A0fgZvTXIHOlMFocmzgy5guzHotyyFTTXm4EGoe
	 k1Rh6pd7DGZ9rv6SeQ6iuD3Sw2OA7Ik1OmNi0R321gzPukQA4h8KFOuZG3EGakW1B6
	 3clwcxNrxs/Tj7mNOfT/Ub1+fi+1HfiIskeeiOODR4mhAHVg7Pq1rlpjjRBtD1SSV8
	 t2SdwhqtNtI0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19A1CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842763369.695.6287864643755571388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069fe59d5b94ba7873893c8db4a463468e75ad40f1cde58245145e93e98a64fd
Date: Sun, 10 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778427633
