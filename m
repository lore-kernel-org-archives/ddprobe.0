Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6AB282F17
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786799434; cv=none; b=qgB3/X3mmA9wJGLToQTGwC7z5Tx4M+AEaM+G5BM3RdWeDhEBKx/qsaRy9HvHFM0lcU7yZDE9UhS8R9hGOK+34zwjZDHzVs90MUOHNCI434dw5vNy8p0jMQsHDGpdueqPHfWdzXEbjCCAI9QER+io+5PJwN7SbsleEVMyddwq9X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786799434; c=relaxed/simple;
	bh=RhL5X6ySb8N/W4EHN1XnoxjMlfvQFIl/3gFk23Ae3r4=;
	h=To:Subject:From:Message-Id:Date; b=Hw6uqMnr1SAjcfMwhMLJdlqmRU/q0/ZfDvEPctZc18g7WR74OXDMogQ9OyTqeE5Wl5YGIUR+6Y+eYHAlJLcFBiIb1bTZdTbZNxyP5+U4/ryAF3ivkdLduyga0rVhJIS9Li9VXZmAfaljcHXUR+W9NOemMwTP2e6GhCvOsEvkhoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk5NWbtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk5NWbtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63B5C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786799433;
	bh=RhL5X6ySb8N/W4EHN1XnoxjMlfvQFIl/3gFk23Ae3r4=;
	h=To:Subject:From:Date:From;
	b=hk5NWbtJfvsNCOfqnBlmLG0Armj9wvHhWVIR1RWUnjgyo8nFlyI2WojrQrTZo4Vl0
	 5YEx8RXvgOWknhwOkj6F/VpCxYSKz4uFnwJ3cmz1Arwu6f5Dvlc72OnEgZ/8i3ehg1
	 rTWO0M6s/koCqpy0BJ+aI4BVKAkbAZbVTID7khhyQeL1TRzpBrIe1d+Mg4EdlFrdrl
	 8osRJuRwzFEwgk560juFuDOPNIss+AHIST/pj2hfxk4iJ6JvwcP3LsLsdC4H3cO4wb
	 2VdeOrNTSlB1yW6lJHtvarVcChGvPRnHo9jyrOxiy3x78dKj1O43HEZmThXZKiVRDj
	 NnLDm9R6SHLsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7F4C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178679943368.29716.7562576811088945614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9685e557568a0f379f274541c3e77dbabbd32a7994a350860c3224c702a9d475
Date: Sat, 15 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786799433
