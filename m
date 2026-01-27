Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F829253F11
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769502234; cv=none; b=rDv3fgGsxXTcGhdmXnk7qoMp9jC05jIRn51AxlKYwVa0qGllTCvCwVfDX+UruZPh48/NTMowiO1kHMqOPlY60AgExziP/mVWsjnu2M9eYTVk7J14/Qqw+1TP7lj5mV/49sl6Y4bvC7WwrPn3kUceV6AzXu57dHJ3lAVlTg18B28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769502234; c=relaxed/simple;
	bh=eqmi93gI+2vLR77ufQ3VdSCmKrLb11z2UdxKgGQ6iHM=;
	h=To:Subject:From:Message-Id:Date; b=KZEajO12cKseMIlTqL1mzVAeoGz1v6xVo8+ObxNa2z8lz0sO5dR+8hDFSbrVjkhK/riEIEXx9S0cb5Nblb/GFcbpUu4c128keX97iLtws6TinNY1C98akKyXm/rMXWP0o9EqxidBbsdeAU17ZR8kbdDpxmFyvthiiMHSWM8uuHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+JLnaqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+JLnaqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BD1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769502233;
	bh=eqmi93gI+2vLR77ufQ3VdSCmKrLb11z2UdxKgGQ6iHM=;
	h=To:Subject:From:Date:From;
	b=j+JLnaqZunvJtEgGt8eNuGR0maZPjla4+hZz/CVaxe9hcaGNDB6MRSUp8vnqYnFSr
	 8MV6DZEzgNUJpH9tnexLKa2bI7KNy+ltTYwufrD4KDSRuK+T0ENqo8xLNPfoUCuBwK
	 559jPY+I2WW/ERUWMZuCAzHwPDSFQOTYEKtz7LuAJEVfGT6zyDAlZAEzKKUMtfqI0a
	 fIeD8L6OG++UWx87Nbt4JxmVA/PvO2pt1N3iUAyBCX0FosdLf2cZfmsIfhvgvsH/fZ
	 Fp1O0n6wazmRGUisNroobDkiVTnr5CGiJmTXqHy3/GS2NTwAvP69J+q9ddGxMCD3HH
	 DOD0gsZBhSttA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB4CA6C9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950223357.6462.17108500842732732660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b03eb69fbda28f1401937b3026727046f74ee06c30142a0d6077646d698165
Date: Tue, 27 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769502233
