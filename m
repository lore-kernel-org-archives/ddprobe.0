Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AF918DF62
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751738994; cv=none; b=m7yFr3qNLMsNLTg2wpeZ7hZwG6+pHOj9VMOCoVLsJW0WxJeJKB3+o8Q8ZuUJI0TgGQZtYDeWSC7Vp31sGRROI+jmwG1qCDYFy6JywtpoeJmSPGQiRkTc2kPHi1WG5ld6tdQo+NRa97PWtGsPuhR3rod3w+6gN/Hrnt4rZT0aGRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751738994; c=relaxed/simple;
	bh=fcA2SxXmup8Ju8EqK76ShQCqoJem5MhGLYbpYfJVIk8=;
	h=To:Subject:From:Message-Id:Date; b=kt9tG1/UNMzmvg0j3sKlahebrOHK0SNK5VbFKl9OX2t08tsRA7YjIC1uvKpXUYjt0w7T94yUGtQwdiglyeP4fgksdLCASHmAFsEPclPDfEIUUFYtntZ46tJ+WB9nHFFCTptKoLzFfS77bYsOF5gVnRFxmF5fm3lCecUedTUAAps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSBOyN3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSBOyN3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A773CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751738993;
	bh=fcA2SxXmup8Ju8EqK76ShQCqoJem5MhGLYbpYfJVIk8=;
	h=To:Subject:From:Date:From;
	b=iSBOyN3Vqj2DT3wB8AtF+HooBaVSL6BZdZIxZjJ8ETDSWwYCR5qjH+pspph+M3MnV
	 Na6ayi8qlyOJebnYxW5hRIf4yPy/kkClHkmgGCcpF2sg6a+B5dwNLktPdyXtZebOym
	 rSJefekkTpvVqvLz8KN3zax0q2dAiSommD5QmSF7KGWchtxewNGCqIa+M33QIGH5lg
	 8fiAR8dMIdgEhNlA9PCFeiG/Dlei10mhcx6TtupxvZPK2njdBcD6FVtQWSPgGW8980
	 iwtpyg33fhzcaDHnbIQI4m+KHMr6OITRBu7Ms49zLSMD+GCkLArIiHWblPd5+pEhhC
	 cXGYCzBFm6I4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F3BC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173899357.10268.5936099045942087391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32848fa7ed373c8fb616231282a0a84c05bc750597d26a63f9e444fa2a2b995
Date: Sat, 05 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751738993
