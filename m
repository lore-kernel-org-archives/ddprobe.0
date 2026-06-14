Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8A7345CDD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781474794; cv=none; b=YqfZs129CP5X63a+fOBmctzgTN6/c8qG8/KHIubcD4gNa1haH/UY+oPC+vZELL4g4KwKyfs9j791PnTzt220WmabAdidtrlhvPVkdMAzOIJsUpAVwOvE9u+j4c/L4kIMmfo3Xh67NhROGY+6f2migcnaeWHltnU0Mkmnnp/AYHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781474794; c=relaxed/simple;
	bh=Hh2zh4iY9kRwN2Z2CSGQfp3SdKDPPUEiIlv+nm7MBEY=;
	h=To:Subject:From:Message-Id:Date; b=YCW43mDZNnwfKH+guE2JA1HocN0Cdc5Dc/9/CuD/naAtHxIEDAe2deUKxBurSm39TzfW8mbYUPGkwrdCL0QM4NzPHoMkIHJLTE7BauM5z7NNR1qgt/P+/vADRF7qkwdAyVjyrWIa5ddGzrdOtLyB3JMn2HGSgcZtiLYvIdQcENY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cx9PPXer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cx9PPXer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EE6C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781474793;
	bh=Hh2zh4iY9kRwN2Z2CSGQfp3SdKDPPUEiIlv+nm7MBEY=;
	h=To:Subject:From:Date:From;
	b=cx9PPXerK0IwVk1qaBbCNJgmUH2vVI6kozVModCEqjYo48CCf2Hnsrbq/i5Ej7uTt
	 psFSHrjohRAANU3BTAkQ81msAzHlDb8Qp8E/bmAEXc56XQ4BpSytNweTOdFPYfwJI6
	 mJT/vYx5rbDqg+qXPCxb/kYu9HeJ9/JDMmFV7KtUFY2rwRt45fhUvbagTZ8hL/TaD8
	 Wa/EzRzaPOK62/6WAYlkniZI0tp6pJwZ0AKknFC5fSvH8kn/5fhyiLXq8ZEpfaIRc1
	 ctoMM9byuQ3mTTqfD5laWC5FZ9756t4PN5hscE6gbDgC3lDPl+1pAv/OJ8H7YT7u2L
	 oIpU2kFjxczoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E45CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 22:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178147479372.10321.6151944023436809346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55a606d04349456e2b4e80fd89e8d1ffe48bd521339ed63350bb4c895be07e8
Date: Sun, 14 Jun 2026 22:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781474793
