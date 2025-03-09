Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B123208
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 03:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741492734; cv=none; b=Re/3vO4dqMMTuP6IJdT5hSgfJVaACt2ZUXKVlMIF+C0clOn/o6YZjyNHrBpYK2yevuPLtM+D8YB5tS9DfSGjFWccU0tkYudOpbDKPmTNZffEcq3sqvxdZXPp+oi4FdbbfJnC25ijpXPtChBNyT6P0SwrFp7VUDkq1i2N9sBRgWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741492734; c=relaxed/simple;
	bh=gRjL25Do8i9jk5H4+AUaIhQY6ruTYudxRb9sLJOnXHo=;
	h=To:Subject:From:Message-Id:Date; b=i3n68RR87GQh3svU3Uy4EUovYcLtBin7AMWxDkoUY7rFtCVRlwMfskX9lw8C1/q5gGkHRe9MYnQ90aSZ3+NOJyR5e7DaBGxN4z5ilqwluG0sff0tnjrmhhYssPhR82EcLYbwocRjzftXDVtI62lm1KC1+9mEE4nwRiRtxMXU8Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsRFYVbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsRFYVbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E52C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 03:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741492733;
	bh=gRjL25Do8i9jk5H4+AUaIhQY6ruTYudxRb9sLJOnXHo=;
	h=To:Subject:From:Date:From;
	b=MsRFYVbkqKx/ifgOsDwmsUmBNuY4J6eq74qD0xnBHvDXaejBR3xcYrJyCPk+IcHng
	 Uly16Z3dUtE1r56F+zmS+kZvIypy231TIZNjCffFxsE4EkREvaP1ejdHROZrNLxfZm
	 CpPKCMWaB2nCjktvWDvW91JMITHPz5KLvCBPwTYobr/hrqro5DJJw1KTqBN2WTv6Dn
	 MAud0xnO9SRjLFZ+0JpenEKBQ8HSaSY2KYBhmGoIVBkboXFT5X1ZuIdLiExC2KSRop
	 zRmuMIhvjTlT/mo/8yNvaWMCr0slLmolxSlFONBhQslP0ISsVBNy7GvVhegaYtukuj
	 klfFVAON6qftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0B2C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 03:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174149273360.429.17094419818642632738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba5eedf5de1eea84a3edb78f95c9d3c45b7543635eee1667869c44cd0b3c4943
Date: Sun, 09 Mar 2025 03:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741492733
