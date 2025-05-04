Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303EC1EA73
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746391196; cv=none; b=mzoFUUldZTyC8TRyw7JaWzzRqflgsivG9z6ppL4xYKdlXhgySdnaZuYdhpmskSPn0pATRnbCmbfRtb/WYlCaF1TlfTosoyrjQzEGPFdxaQAvyJU/IFvA2IhAuDg72Fy1ql2uf11zTdZQH6pu1SvjEMY8UnRe1+cWgUzdS96mEVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746391196; c=relaxed/simple;
	bh=3yDRXy7jb5wbLviL/Nn8LjeGJq8p/xRgl2k5zJHTWiA=;
	h=To:Subject:From:Message-Id:Date; b=tFmnA9hRqCgsFVcc+y5CSQCzqFnv8d/xTV0KINuVHNzkSAzDGL3AwrgXGoCjuPorIMrY0HmyoGFKdTo6QaSEWRZrKvrtipTS8zTSqpF6xYzTRphts8qB77qayIVsQhZRaeSEzjaeM6wcybBLSwbumio6KrmioDRObWIFfQ7Y5a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKy0Gd2P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKy0Gd2P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5857C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746391193;
	bh=3yDRXy7jb5wbLviL/Nn8LjeGJq8p/xRgl2k5zJHTWiA=;
	h=To:Subject:From:Date:From;
	b=CKy0Gd2POCdplXbP+Uv8L8wPMQhekLE4i3ALFSEsZ6LAMbzoizxuvfVlJpNbOlu9y
	 WLN8PkNG3oMT6HbVrCvXj9gz0YNVS/5SiZWERxQ9FV0IP8M2BMXfII4Lp4JUWt+yaw
	 3XjOg1bweH6g7JVj/YRQWVVhANi8COHfxGDg9An7PmDtJlYhHfP3ZfWJp3kI4bAu9f
	 uD+7tH1OegvGDt/03LK7flL5KBFgwAJfZ3MYZ33C8dtfVbPT2uBAw82WKI2xUbpIGh
	 3tCaDqvyJ0hM0i520mj/xz1zo4HJFSnpSLis6Ld+k7/GTAWoCHGywnTfTVD6vOXP4o
	 WNOLrOHOajaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B98C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639119357.30068.15662990508946268283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e2d57857246169111e22d18ed457c30a261f239ac94972fd76ad951d0dde40
Date: Sun, 04 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746391193
