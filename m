Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F011C6B4
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744084194; cv=none; b=akl/TipvfQ0EQ7sYRxpvPMDsWE6zOYVYp5BIRsz9LhTzRFBRpjCwYDiG1NevzO50kr3NFo9FOd/C71RWSmqh8RhCXFDzO5dMX8DYNs1XtOT9wee7vzqOOf4KdAfJd8UvCMxTROLXosQjZvHnPhuLK8xlswp/sSdjjwDliBkDogA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744084194; c=relaxed/simple;
	bh=2CH/Gvvs4VyMdlPkd2B94s6tnDMU3yGfGhWkB21jkwI=;
	h=To:Subject:From:Message-Id:Date; b=TCT1FDPIaElFKoAbdsHdJA9WR0KmlXMgI7mLbhRwFWNSl65DAW2e+up90/jk4Fl//t+hfIhnu/pGJruhW3745A5mZYENojZ3oHwrvYUUUyu4oos963uw0GslfaNw09kPqkcdU+cCx4mHtjXb1dTbQLqJ701zjRC3DDxONqcWdPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJ36W4aX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJ36W4aX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D0C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744084193;
	bh=2CH/Gvvs4VyMdlPkd2B94s6tnDMU3yGfGhWkB21jkwI=;
	h=To:Subject:From:Date:From;
	b=BJ36W4aXkVrEfzH9Fk8H2mKg8aW/6n+Dnycfb7UjI8CNYyEWB5Gn+wAAddMb2up7C
	 JfwuW96bBTWiIPFsAQK+FcAax6LCr1m5/IeJXPJ1iKI2tIqGQfD51Ys69q3rFl7/1B
	 05WvwERTDwH02D6CLrQ918dxqg65gAfREYwc8ri8EzBVz2RS/S7QG6Sl16etoHSn3b
	 xUd8O4PqVcyx0aDHArerE0SuQZj6LRAXEBXCqeG9iMMfUmgepENpH6o8pp4nU9wDeH
	 pdm+hIGkXE8ZJgWvPXylscA8PAEgrb9RhDzby0vnNWm+v/K77f6Bwis0JFmtXJyBZm
	 4tcQyYJAbT/dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93296C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408419359.7401.17065325360369179607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c9bf81cbd09704c60f901516174eb0d20699f134299ea4ceeb86b4b46edfde
Date: Tue, 08 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744084193
