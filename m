Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0943827FB05
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771452894; cv=none; b=DSPLfEXGQZHLXa5aQ2Wnlv5Op6mn6odyb2iQUYiW5WjTMXYheJi0zWyBsBVIxcT5Po3IG4XguP/spNqayTxtFUjUUr0b4k9mvuVj1fFJvlpAFYS3w0IEs9VqLnn9aO/JPI294T+JPOl+oDoYRwo38ZtaTTIGMHlPHvqvEbr43do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771452894; c=relaxed/simple;
	bh=+Qyo9svhEQc/bY5BPzYongtKdiw+eHLgU/Q/eOOVImg=;
	h=To:Subject:From:Message-Id:Date; b=FGtBLMpzqI/Z9jBYOX6u2wS/OwWtjUOy7vN4dCuUnbbdOlwCAOFvuuqOI058d3aRnyhyTPR92mSesfKirIFOZWS2U9Z+hfJQVi2Hq3BqQOsHqiBZXyMcaH9Yh/dszCw0nysvrVOEs+0n8XgYDrmI7Z39qb4RIkVGNJAFJuq0cAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ipcwJjhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ipcwJjhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEDCC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771452893;
	bh=+Qyo9svhEQc/bY5BPzYongtKdiw+eHLgU/Q/eOOVImg=;
	h=To:Subject:From:Date:From;
	b=ipcwJjhMyUhU1o7kLH0Lide/+WFmTCFVKKoVVl/TzH9gjKJu7VqHnWdE7vklE3HWQ
	 FIL/BonRtS8jmHMeG1pl0kcLA2Ldb2Iqa/bFlK5bTiH4KGlzAam5e/xfFYp+7up2kx
	 6REAzaGDb+g6xCWRleifIRnDKao3+WvELz9cUFNRKKvD/Wvlelt7yFa/1Me8WKG3Ah
	 ywKYlf74UcdM0mukE/O9if8PuLaDzyr6+TNxhl1EETugDTrfqfPNDo3b3hMQCI6G3e
	 +mmvgpH3xNKg76S6nhoZ5Z4VEqvxg5uT6yx4sw0DQ26QmhEzsb6Wgdr1E6WoIk5eGU
	 By6sCK5Vfo0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A447BE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145289362.32236.8155729307096274507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1ad66e3584d863ac7260550ba86beb253dcaa03ef7fac78a084cc764409192
Date: Wed, 18 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771452893
