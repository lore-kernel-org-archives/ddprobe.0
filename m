Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6394938396
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720287983; cv=none; b=IyFNSOrH2NIFuI/GHtTCHR3NafHqsjp4egpA1qn/ysOAH+0Qlsk/Jcy7CfjABPj4uiUWr4klrLOd4eTPa51VgQEHplFYA9TgUnqSIcPn1WODBOBg3xpi91kWUjUS0wZM6e+jUdrxK5Ybbyr9uTR7qbipY9x+v8FecuxydhY9O8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720287983; c=relaxed/simple;
	bh=eawzHtrK0mzgbhnMXOXVu7nIr+Z9CasqwpNgdL1I/oA=;
	h=To:Subject:From:Message-Id:Date; b=mJWW5gpe29fwSWBzGr0fzaKO8xqQgeeMwPEsyCCB4Yv4h0q9ai93GjRwOj+4SzxEeVHRChY3slxitNz8Jl/EwE//i3F1h5M3FR7Ie435VgO1p6sdVjlNuDpAU86vswoYJdujLwFag71UmvFZNi4A0SCTVxFRdchm4yUbSG2clJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qh5qVIBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qh5qVIBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE35CC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720287982;
	bh=eawzHtrK0mzgbhnMXOXVu7nIr+Z9CasqwpNgdL1I/oA=;
	h=To:Subject:From:Date:From;
	b=Qh5qVIBRGJHsGx3Ttsfpu+UfhKjU/wJr2pJvTnJmZTwFQICzkV1OBkNDql24vVFvc
	 sTkJVaDX51zaHnuewa8eZbji1RyZ2twQQXvWgVSvmQb+qoseGwJ+xJOgCYZHt4t3VL
	 7lB7O+484gJbrUWOlAjahoTsPnQR9e/WmvpgaP1s/NoxJVyECQ0/+2J9qnP96IgxyQ
	 /UI34JJVDT0p/c8944DbaZ86lMWRY9eFDSXtTfa7p1f/kmgjlFF+ZleU03G8ysAMrP
	 tQ9OyOiM2tJUhOH9INEcDJb26mu6RJlf3iOW8/A826K5ug13wP+xP8+s/yf0Dod8nM
	 GkZW/WJ7ZIVEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0717C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028798278.22830.1635995875730656335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff6cc31430289cfce2035e8b184c2852cd929d6207cf886f1f97723d04065ab
Date: Sat, 06 Jul 2024 17:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720287982
