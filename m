Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2C028F0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720281983; cv=none; b=ezZctyPXnnmilMeam8Sp/lacF0YW/G9ThVFD8nn0Zpt4XRSmOUIC7sSmTK8JhLhgPZ3dPU4YxbUtN8vtwxIrBm+pmHjiJmXq6TqDQESe+OPBvR1ZQp7wt/IZeaiBxx35t7/mzDxJcw6ApnTWQWg0KBpceO4h2mmabaGR1OQQcIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720281983; c=relaxed/simple;
	bh=Ia1ri/t9K0T5O9khAEqE4wxUnhEsZWOaL5oOEGdAi3g=;
	h=To:Subject:From:Message-Id:Date; b=BdlNW3IP7mGwmgnCNCZgqP0E9t935KWhFVIUAd0FMUED/olbxuiY5mY/TC2z0LwWrh9zjPduPeOL0hyHLVRTHk15GnD9fHcd96YWNn5tIU1BW+v6yeXE+PfHTbkO8irSOyxhGAn1tLFKuBOIx+bE4uVbn1R3vfExaUbRLh2PTMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2adN05q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2adN05q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62FBC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720281982;
	bh=Ia1ri/t9K0T5O9khAEqE4wxUnhEsZWOaL5oOEGdAi3g=;
	h=To:Subject:From:Date:From;
	b=b2adN05q6QM3MNsBnDy06ampZbja/V972gQUv+bN9M4vb3XoPce1SSn2QRTUDQnhu
	 7wow0UE5MFxhnfSplOjZi2H5e72rrE7kkuN6ykuViUSGE/XDmj5N9wC+wyVPFnTiD+
	 FSgnPj3eczobTA+pga15VcnF6Uo44ZgotU6GjQVLHaC3wpjcXD/Lh9vGkD8jAXQFvO
	 yoXH3EvCPU8KV/KqqTfQe1/+/s1QdKwwEVjRQ/wPqCEeWwvF4yN7hNf8bF9PybGiMh
	 gxaxka2Z9GDa1B7DIHEbgLqmYKfF0Pj4EQGUmmsKCdAp89vpl859Jc4/gwEEjnWbMJ
	 YCyOrwl9EBo9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AD5C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 16:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028198275.12752.18178476056096389258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f51fe53358d93911baf057754ef0842380330239abd9908fa7931fd7849851
Date: Sat, 06 Jul 2024 16:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720281982
