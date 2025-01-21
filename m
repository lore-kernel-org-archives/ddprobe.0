Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C867D1F5439
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737482153; cv=none; b=Abb+8NFv2wdGwsfK7RbhRtEw3VEzi62jqyc+YelJy1DkIbqcbw8BY3M69fueRMmpD+tmyORUlNuFyyRWrRczbziRQxBSlWA9AxjC3K1pDc5e3smLnQ9D+uZzV2BKYdBkyA4a8AfHGAq+05x7HrMVlllBSYr2ZtOivvz6NGQWZn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737482153; c=relaxed/simple;
	bh=KhVqWpI+C3druse+HMoI1Tuu0l9nQ9hikd7xEqDFYog=;
	h=To:Subject:From:Message-Id:Date; b=Z5GJ7Fr1RPkWk25TXLZhFBlag2wjNoo8GFenPu0epL4uH0VdVVg5VbDSWL9V+LqZMSXluGj3rLzEMZsnAMY8DWqfbkM2JE80sb2R/y5lcce9CTY9UEPT/Vm5Vwa/MUbrshI8Wbbev1HwmYXH5UKYdBPQn7kTsQNA1SL4FA7inQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRMbXf/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRMbXf/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC60EC4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737482153;
	bh=KhVqWpI+C3druse+HMoI1Tuu0l9nQ9hikd7xEqDFYog=;
	h=To:Subject:From:Date:From;
	b=tRMbXf/0hqpyU2SVuVQ8fX90GiXrKL4EbWxuiYRSW2CUimNDsmyn1bMRK/xIrs90f
	 Xumbb5gEJzIKJ75f6yDHUZptm9LuCYgQ1mmEgNAVjb6DwBLWTaD4YzQcJ6w9Atsz4m
	 PxUFo9QCCiN5pLFRbZH6j7U8eplg9sQAWeQRQTW60OdsSr3393oQLTX170fVH5SBQV
	 +k0pmYYmoE2Ck9lbFpRo3553Oik1J9i2AK69vfn9EL6yLYmiEPL4EAJYl4U1BHPI71
	 SiJb/T7xhuW6T1BdVn5vMQtW11nAxa03qVdgoEybQAD+w3Rv1xqZZoqTIKes7t5R01
	 pZj5ZF3gYt9CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B07BC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748215361.3969.738261525701811494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03732266c29bc6b7604ed812eb87e9ac954bd86d34281f0eaeeb7247608e0599
Date: Tue, 21 Jan 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737482153
