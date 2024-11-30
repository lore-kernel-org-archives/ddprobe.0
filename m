Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D221E17BD3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732992953; cv=none; b=M49Jozxpp8h1SU3ZLtYk04aqxNHASQrXZqKgIKdZ0cgz2vCaDTHuzxTyvw4W+qLN684CnjcKhefNT3IMuXZ3XjTZP5XYTcitSCcclAQrHRK7dO99B3ErEYL8TVWJcxN79PkieVfuRCy6AgYvGD0pNHsWSOhv3HcMilEDeT6whu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732992953; c=relaxed/simple;
	bh=XcvUJIZ8PBKUKtp5AN9tnHFzDROzpll/APx/IuJIgxQ=;
	h=To:Subject:From:Message-Id:Date; b=MnQGNMEax/UsWjofhizdnkcF/gXP4f+XpXo+JqQmDNnWmLeeC2ZxaatWNjmixGgNlpAN9l9/XzFgLzB/Px+m0e0ASGL6WVUFsF2gCCkILROXeQDzQB/K9PZoT+Fc+tTE0SVeOL/+9hpjN8a2ektrCpzCkmLgc7/PLw/S7xdxGsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKyKaxyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKyKaxyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7F4C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732992953;
	bh=XcvUJIZ8PBKUKtp5AN9tnHFzDROzpll/APx/IuJIgxQ=;
	h=To:Subject:From:Date:From;
	b=MKyKaxyD7tJGZuvDxSUe7x2lRcIpkD6QFGluYhsD6YYzDubFfOx1+V772K3/q8/6x
	 Hvk6IyzQzdP1OMWrmn7qzcHAjQh0GMBRH5px3Yrc7QcjeeCV16zRy9HAikRXnYRRgb
	 /7+BR47hlRVNaWd8ZxTt3hY0efv9DkCBh2IkxoW8NOyU9Sv3w+9I7bNe5G3g10rdrC
	 qoDI/oRxduizxKgtsBOdJDqs1AgzUOqCrYyBHe/5Lt0eHdtcIFs7sPT+zIWULLRgnf
	 D0lMQycrMjsZJTBimVuPuhAd2NYsRKxiFoRAkvZixpdFw98q2WnqOO0OJZ2iz+MM3K
	 PRB/BsxCmbAgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9955AD735F2
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299295358.3252.15953316251771520903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed785863516a89041bc98ffef6d8f33f42d5fa527b2705109a5820236a1e6666
Date: Sat, 30 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732992953
