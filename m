Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C1637F8CD
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772605494; cv=none; b=R87cE8X8+g/QMRFLwGMkP/VfvU/3kteURter+FrCh7WX64TufURrCA/r6i9X0Ibwj14bETRfp8vZdzN5Zhzt328uiMmobQo1B6DPASqb8yoJQ2pEftfSJfCVl+426vU+xp2bdu2MJXrd7V1IHXHQZhd+K/ulNtUG4I4z+dFD0Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772605494; c=relaxed/simple;
	bh=VyB7vKsJ94+ALqsgblQPagEcv1XLvxz1g4Sb1DpN4Eg=;
	h=To:Subject:From:Message-Id:Date; b=u2TgB7k6sgLpZHxXAJcGPiCHLpmmi+5XDARL8ucomSv+yHScVcOnYxN2y4D/FA4wfhURZsHKpVl/NtqHf3xtS3IKWAcHPn/+eP5nyqHSFFIyTY9uMsWyprOSTFPlbsUHg7zJME5EP2c1yfPByCWLziAEv87ewJoP2muzyNyP0UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LS6U8i4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LS6U8i4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE359C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772605493;
	bh=VyB7vKsJ94+ALqsgblQPagEcv1XLvxz1g4Sb1DpN4Eg=;
	h=To:Subject:From:Date:From;
	b=LS6U8i4lgexKYJcjWOUSPD7F0bbjqBaph8dBUhGiNnjE+rRKDMmvDgEtUujLyYdmY
	 n3YyhSUZSMZcSfV9g7J2TxL4iImin+oN9HoZmb2P5UjyGR4pJjnw57pMh40sFr2EF7
	 z3jweHupk2qAKRrHaeMa7Q0AZZIFPqpX0iNFHUZHp/omKHEIktE5I0wr5srluroBz0
	 VLmJX/LxrObADV8Jf3k2Nm05cgDOHJVFPxQ3nSWHGv4uFYqgA/DB5NjbV70J9fS2uN
	 TDTDjyAHqBhAqprq/RR7B0b+7mVBERoV0nqt6fCqQjQy51v1d+k8JMeuh8SUGsi1bB
	 UzrKuzPpR6Ujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96303EDEC08
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260549360.11706.1876281274105135455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f71924c163203dbb109f9924460f603dd61bb3b20eeb7558b506c614621a6f0
Date: Wed, 04 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772605493
