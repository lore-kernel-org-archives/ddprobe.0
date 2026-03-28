Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6871A2545
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774694094; cv=none; b=AowUbBFeTopOvbFsXFCt6pscsUDBptfbMUBRD4TjxSMhxdHFYrOsH4IxZLMIEz0VUL2SFGwwESrFTaUmS+2GuIhl0+/EGWIM4QUf7kvPOuo/g50OoOsL3CnV7P8lgUthp7vhSC5m9t7ACNEf/lz1IfNc6b9ZKlR+fOsDSYr5yws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774694094; c=relaxed/simple;
	bh=YN35Fr+Qt4j/CgwObY4YegJvxXk3mfzLbWNlpGhEdv8=;
	h=To:Subject:From:Message-Id:Date; b=GJC4MYBQR0SrbzCSiLwb2U7+MSEfaRgiH81E/Z35vSYTt2YtS28/7FPtevToRsStLfERzYSzAeTMlm4R48pPqgexGREd2BpJRkVNE2R15hQG4KF2XZ15KOJ27+rjzeqx+m16j504ontTjYG/7RWQVBa7ROX7dr907H0qoKrdifc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiRX+hM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiRX+hM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB72CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774694093;
	bh=YN35Fr+Qt4j/CgwObY4YegJvxXk3mfzLbWNlpGhEdv8=;
	h=To:Subject:From:Date:From;
	b=EiRX+hM6DP/wx053RMzon5YR7Cj0+tlKKJ/Wa6QQdW3+YSi8jLzPL+d613zXLnJgp
	 rbJshkSfQil/TDGF1xeIDJIXdBiJiIOSMbewxyidn9S8k3EVVKDZMFz79BneFHzf20
	 A+6L5CTwRUSopqBUMdgzGJSiyIWFQj2vjSHrqz4CSXuQzP9J44gpdkRSwsqRUvxcb7
	 X9Obh6OM7A4KMK/iu+Wat3T6nrFxUJC7tJr1LIkc4xRDqSzFU9SBnQYtl/d/mtrqKD
	 y3nWlnN11CpwZxpTAOZhK6pm0kNgDGuc5xLFc9kOKUaMHTJOmdPxaHxPf3KDxGPUF/
	 rGf9L1NvncYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9844310F3DE1
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469409358.6788.13905507300519616131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4403a6959f8af37bebd121da99f3afb3925a59468d662a42a235caff191849b
Date: Sat, 28 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774694093
