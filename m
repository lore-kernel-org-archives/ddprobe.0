Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CF42DFF3F
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774778694; cv=none; b=FBOdv3aiiAXucX+2+Y1zrZDzSoGDSHGdGEvDy94HLOO1SztR34XDu5pNWOXH5swzgU0BxbBei5afD7vhaVC8SYA2Kxacg1E7h1DEJ4/+ZxtIl2dYmo1OxoM2ZnbgFkpkt+tM+ompOBoDqaCuifeqDwg+MwPP+pWTEsxO7GTDTi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774778694; c=relaxed/simple;
	bh=g73Vcccbz1uJa1i3cPFfx+YKcrZkGg4isJIximpAWII=;
	h=To:Subject:From:Message-Id:Date; b=BDR+I6CsJDH4jRV3TxPKb4SJYx+JeUiYaEn7SW4tG1m+Ns3UANxhWp5UcVEN/H+QpN5yjkGmfo8akF5KvEVu1WE0xnbkWzi5ixi9Ph2yVoKGBxudnGDb305wYMxrVsMR/a5U/23hqmfQJoTGklArQOU6Bm+Tg1l6wIIe2NK7xN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbRNPwxD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbRNPwxD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77F5C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774778693;
	bh=g73Vcccbz1uJa1i3cPFfx+YKcrZkGg4isJIximpAWII=;
	h=To:Subject:From:Date:From;
	b=KbRNPwxDiHFk3jZHnmxcOfZMVs6j0z1+HnYM3x4e7xvq/h4Syu21xtg7qOjayaOSw
	 BzRl7qWdHVW02P8jlVYwFyo60dlcFjDRwENHhKDOwi+XSMj/lZHYdiQOHQ6K8MJqbS
	 pp5ygIUNjGxUH9s9ZNVivuqmHFNetuL39A6xIZNjvALe6Zn3XnDmJdb3CnKbbnwUkA
	 o9AxRZgoSPIbyoXcdPXdhQ6WCmPAko970v/29TcQ+qgB9NZBta0beAuUa5umwc6gUE
	 hx+dckww8Xq/L94c00UDefqRCiQQpfX4bKIAFlQsNyX98ET1roGnyyJF4yK/gL3A2Y
	 UPSivFqtyc4Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93796F3D5FF
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477869358.8907.8328112709615652629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf39e0af8db492d9b68ecaee099b5fa92554b5b70b98394ae69bea252526f7ee
Date: Sun, 29 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774778693
