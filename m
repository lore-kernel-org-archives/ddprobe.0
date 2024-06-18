Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1DE185E55
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718714363; cv=none; b=nS9wsc6qqixfSWpRpCG09ma1/Qk9Xvdl59CD0UkPkYmZSuP62H7Lsqnsi3zUvM71zKR7ToOPNR2TSpVHxhgIF3zcwTNPDGcVF9kuuQ/QaDJX8b1K5FiMyhB+AZ1DJSEieTpx1E4Rm/kGMGmSxS7vE5GojexZQ119uLyZnNXNy58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718714363; c=relaxed/simple;
	bh=4aZwdtJi29hQ2Xtendy5P1A/z7ASlHpFG3H07IUTw2w=;
	h=To:Subject:From:Message-Id:Date; b=kFIV6uWQjdAxGMRGy77SyMoh7ciKgjEMYn+/TI20+Wt9KgZAZ4V8R79dZ3QOka5ieyHaurUPTN4vc9nb4TzaFp/yOrXW18es8L+TQGpbYQxmmcAcn1fvakvGhG8xoZGUq+I/utNiP2kmyDvn94OQAfJ9K7zhWOWd/TjsOaryqgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1yk2Juj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1yk2Juj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE8EC4AF48
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718714362;
	bh=4aZwdtJi29hQ2Xtendy5P1A/z7ASlHpFG3H07IUTw2w=;
	h=To:Subject:From:Date:From;
	b=I1yk2JujjmraZe8Ro9NfF/5buSKPl18eCKocNeL1M5QFDmm44XAJFBcySWuNvX522
	 jMxqeF0BQJpz0SyiLKA15QfTN8DY4VB3l3AAa45GujmSLvGdAcTJNhkk/ya329vqm6
	 Kst+9WJHFCG6HNYLT2981w/Zg3SX2GvLOvmLl/bzSzTLOCWK/JNe9I2DwhZqjW0Fk0
	 2M0/QPeFyHZwz6rqTYH3ERftCPRCrUmFzOcG5CytWPZsf4HhukePaE24UieOzPmO9m
	 LtkhCslrPQRoKPDP39qKA2EWETABaxNq7sKzNGFYm4+uBog3Be2qbFC9v17Ys/f7Sd
	 cML9cTgkL5Jfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E45C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 12:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171871436281.13302.1826138740648639981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a20af374b92f888635892c06611e9b5ec959261ad5e2702a51fde268f14e107
Date: Tue, 18 Jun 2024 12:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718714362
