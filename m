Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7501E5B70
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761709794; cv=none; b=FQIRMh5ZtoQb82fmrsDM2XeOf/FJ0qKzj9BGmyAFDRtos2Jnc4llJPSvRBIGCxm4Hb9o2FNQyFbQIDmvNXZRbwQJCFWEIl23XUnrDwMnloEnDlgnfcogL7+fwcEA9HiAFTsLkBOpybmqR3muHwtExok3a9GGrUy7D9cft+t/7Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761709794; c=relaxed/simple;
	bh=fZ1w5ThO/dXp0C6KQcBd3EOd/YtmACwq078dWA1EWYE=;
	h=To:Subject:From:Message-Id:Date; b=Pi4+a2UhapFxNCbdZLmycmFA3eJ/b8beUYluFqlZbsh2vVKURf6SkX2fVTJcrwRxqay8h2rzTHxkpGYcWlr7Cjt6pyoV4ISAuyKFxH0N5R3nUBAl0D5vq+OXpZtnTkJAAYjJmgsy9UI9gJDO02zat5f8nJf6Y///pvqE9Bqp5NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dXObMWXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dXObMWXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A186FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761709793;
	bh=fZ1w5ThO/dXp0C6KQcBd3EOd/YtmACwq078dWA1EWYE=;
	h=To:Subject:From:Date:From;
	b=dXObMWXLOsxBZf5ptfzWqcJQxYDn/tmXCQzZJYbnhLdjRjvuA+nciYrqh5xdpoH/a
	 8FdfQDcmJrDGw2VV2Ysv9/wGZ4MGoLd48ZwBZgJow1b4DjJI5FjyDdOjqVJbJVJJXR
	 rHWa3PF2IaGaE5ZsAaJhNiuETQ7ijes6aVH7oGgqXLV423et5D3Z2MiJPDRpFK8icV
	 Wp7UosbY6f0OQonxjMD4xDFmyPprfA0EdFvzBb4TiXGcqQHVi3pKAM7uKxW3MSPtxP
	 H1AiYHHB9yL96+LiqA/MZZ/Y2k4EvmfHqrQpelLb8ToIPC3ATZj21B282I3IV2AEIF
	 J0GU9rKO/GHCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0DDCCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170979357.21950.11981495257608686518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153fc2543a4bc372ff8b78cb781f3f83b424e340cb499baacc68bda858186f4f
Date: Wed, 29 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761709793
