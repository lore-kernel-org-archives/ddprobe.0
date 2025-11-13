Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6029B4C79
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762992594; cv=none; b=rKA4+RhcIXnUK9jDCBQ6+VRNaRHkR4Q8nKORkbNEP1VHIxY4NDXOFAyQ4rnriyhtzUNnauPiw54IrOsYK4BlL3JqPE0BNfmIgi4mDEFl7maPmrVeigLClvVTuXOE/3djU58WLc3Bow45qW3UrKkRw7GWC8NzBEqsWvklNoE1twA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762992594; c=relaxed/simple;
	bh=vCXxvkVT+Ib+ZkddKRmeO1ObahumY+mc+bIcEGwDBtw=;
	h=To:Subject:From:Message-Id:Date; b=Q7v9yBT5HL8AVV+5FYVU+W32WzGa3bLnEEfz0m9zEtm/IaDMtKaBMuYygCcmJ0DvgYHLXEoSh1AVUwBREOJHSzeUSlpa0bg7bCSVZMoz7EEqh4IKKq3iBZOnvE6BMqmROkmGkHT6DcZMyeWm9wRgTuv2sPjeyM6whBRP+SAw1ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4CecFCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4CecFCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8DD2C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762992593;
	bh=vCXxvkVT+Ib+ZkddKRmeO1ObahumY+mc+bIcEGwDBtw=;
	h=To:Subject:From:Date:From;
	b=K4CecFCiP1aNF5ZiqNEC6mAKnEipmdJKq44VNbKYhcO6IhvEywY+7ArrLyOo0Fyht
	 7qzk6pi3qNTrMN1F5hFmfymyQmC7aPKWqckwvSl/MYnyoGXsvO3MpPfMqmFVvIDezQ
	 3wbGTInIJ/E7yBbiN3Fbc/bAE5Rw6Ob1m06RtqhQMrkX0jkPSOhzAD3z4lOuW8WRme
	 V13vOgds1DwTZMbFWlOxaeMhdHwKJ9o6FJXRhWdtzsCllfVIdnLlEaXoez7ctr2d/L
	 IAEde5sAVv0Xgfqb83faFURvCe+eAJu1LeaOGW1Fvnj7CFkdKWgkE6PWB6YXTMbUac
	 /00/76Z7MlSRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1802CD4F27
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299259370.1960.12012603091387738264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3055823ff836e962823b90934370a12e0e426eefc19a2b3bf906402b2792af
Date: Thu, 13 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762992593
