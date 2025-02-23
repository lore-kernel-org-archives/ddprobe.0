Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E274677F11
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740328134; cv=none; b=ZkauxaeNAhyrgklsi41CxKO4ozXWji8LbaS0Urhxqw5OId1HD3t0iK9Ob6s11zQOXi44dRGTV7uSlMSIAFvN1AUpAJxobO9a/He9cJgcTD4zC/yin7oAv2vc45QSSkv7rRYiQbwMW3Zgtf380Fqv2FoNPOirMxu7IITbNkjJ6sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740328134; c=relaxed/simple;
	bh=X+Xgq6Co3t0LUX46guWUl9xDKIZKEiiB2Y0gadudne4=;
	h=To:Subject:From:Message-Id:Date; b=PivIkIou+vwguw0Bcp1nsBRZ9a4slhGZEgGlKNJipd6zQrE1rIKw8Ip5ObHPNJ/Ljf1bOpn+CV/bJzmbpqTlneF3H4poSI59EGygGEEZfGGr/STtXAhSvCjEvzI8Zn3+4wzGaMu7Bb+pP4w7mel2aRgWLmZYc7NtG6Hs5A964xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQIiGGgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQIiGGgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F8FC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740328133;
	bh=X+Xgq6Co3t0LUX46guWUl9xDKIZKEiiB2Y0gadudne4=;
	h=To:Subject:From:Date:From;
	b=TQIiGGgTvlkX+KDHITDBb5AJCqhW5z4ZtGxRqFoD45ySvyvyJ/5vseYSdJ3WDYeXE
	 uZt3zpl6ORBp6zkCO+2ODQgoIxSunsE+bxIzIFi0JuNA5seZeWF7f4z7rr+iptO3ug
	 ZgGetJvqHdu8AjQTCcqd8dTuBKCYAqM/f7Ro3joMa+62640agsqwPcT4wX5CwRTkxn
	 6L9LbKnXoQKrgGY8h5hAL93D2DQEelLQOg8xwtJRCDYgCYOelwmNZdBQcrXEq3f4Pf
	 6WsGu0jPlkJfp3o7Sn7hZvp6pKatO3yzjAcvXeOZMuCh37qgaAhhhZtHAtHjXge3p8
	 w2jYT5FlduR/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0551C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 16:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174032813363.13949.12464247077317609622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052ac08c6f75832a4bd1f19fb84038848d8969637274380689a88b910b4ca92a
Date: Sun, 23 Feb 2025 16:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740328133
