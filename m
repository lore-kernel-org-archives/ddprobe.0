Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401CB442C
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747507794; cv=none; b=NtV+bNBrgRznyED/LnAfKEGcB/i9JTohXC3YBr34Se5dRCVLM0B8Y/4s/kOIK8H74tmHJdyplITWAocm3LYUkC1LryOIedh/H752n4c17JNMDzPsBdTU46uUM74ppmkC1PynpqcTh78GFPQoRgF0tXg3x3PWK8zFxNYDOgmSzlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747507794; c=relaxed/simple;
	bh=KTxLaBbI+cvKsBI1Qg/LsECDAK6Uq6BbFDxT5Drnfjw=;
	h=To:Subject:From:Message-Id:Date; b=ohi6EZK7qVqc9ut4YpEQBej1Z+DgnIsFTFwQz42jxfj3BR1K63oVJU32S73caTvot7mRosDxok11STDxwnBcrYbDz7FLmwvx/zZpzv3K1IzFHbqM9eBw0ZuzxFNwEHBnu3tXMaidqOrf6hYT61tk0FHricZFdoHetd5fuSb4eUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3yeJzUS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3yeJzUS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73A1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747507793;
	bh=KTxLaBbI+cvKsBI1Qg/LsECDAK6Uq6BbFDxT5Drnfjw=;
	h=To:Subject:From:Date:From;
	b=Y3yeJzUSVtEhfp/IN6b6sJMwsWJflvJHzfIxictrq/nwYpJ9VDXNVmymCmwN7WOcY
	 A6pi6sohs7fT162cecIwPOaO3ProQSS3+ooivhw10A42cnLs3XIn+ZWokOCdNV8C5G
	 I5Fvlh4LPJfE99vpQjZFguWWwBQBJsVKFitYF+z3hkBUcj3ZNmi1PH7KsIpK2y1Br5
	 NONYSFX7VdvXVGPM8EYdS93FBjcKiPhnpzPBMtUUbotl6Gi3eikI8nIj4a66qtyE2g
	 0sXDDtYBsIMQohbYu3FKmQ8k1lHkpAe+2bMrqk5zX33vEoF1f8DilyrOYhy2e2z3VW
	 lpIMr0uTi48AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E98C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174750779357.11044.9006677166190717459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a72d2f0817f95558cbb2017ddbdb47a305afc92eb9d22d9bdae630204344a6
Date: Sat, 17 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747507793
