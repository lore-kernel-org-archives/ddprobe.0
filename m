Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7942749F0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756271994; cv=none; b=FxLBHux9DDDtBMHZjtUWQW2bPB2RUms5wvQkbvLkbMoNqZeFVz3oUe07fSBlxAZgffTmmpOIg7ZA2Lyatg/Krd+odA9RpmPJJyV+PCmPQC0AKWVc56ia7yjVzsoToe6Dm+v0nNguYC9DN2JbR2t8JpQ3ERU1TSGRkU52L+8Smv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756271994; c=relaxed/simple;
	bh=jLteU2oyoaCN1R444+tBIvbpd7y0amx/U0EcGnFEikI=;
	h=To:Subject:From:Message-Id:Date; b=hvj1vo0oU3sMgmuG1UYSTrbgKyPZDuUPJgN7FEgMF9pJftVqm70fg3mjCyfUgT7jdMZlCR1xPaFTx3kbw+eve1RjgjzJLASr75GsgphWhww01+HnGdMPd8SvD8oMCvTO6KWH2j39TaE5w+fjwUTRDOgKOAyaoKcqstozHhf8nB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOSGr6Nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOSGr6Nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A451DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756271993;
	bh=jLteU2oyoaCN1R444+tBIvbpd7y0amx/U0EcGnFEikI=;
	h=To:Subject:From:Date:From;
	b=GOSGr6NwoRxG/12fW1Vbxatu19dwMKC5g3rVYNldP/i6ndnWgQInevtAbACyKvtn4
	 tsv/giILC0F9a4MVQKhdl/FJGMwL0eX45q0yjfSnrfpxiRPfRBO1DO3F69rWG/mH8o
	 l7rHEpKrIHgjrqUt/+dwBnSxK28qmP3r32ZnWpkCH4QhCruQZlhFIUqSQCiJnSVRVz
	 SIyBwiSn5atuMKLGxJeDOGoKBIzl4t1atFq3+qRi8WaKjxcMz+f6YUx8L+SHNrBTbd
	 ltoI6sB0gxT7jjYwEFRnSN2JHf1LjK0q8bu06SIj7Ykz4YcR3A6oFVv9a1TFn5o6/U
	 Z6xhvWGJZkgDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE3C8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175627199358.6827.16077267045169574181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59383b884bc6cfebaf9288231691b42bc4a42620ff8530defa7da90a199cc5a2
Date: Wed, 27 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756271993
