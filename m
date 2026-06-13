Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441E32135B8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781346394; cv=none; b=VoWm3RZzJoTekB5ESE7GATEAy/NVnP1qoOgG02+1AWE+PG2OxoA9vO4UkE3vuVC0k4GhrfHLfpxteD+Vjh3Y/4p+tBwaJIQX9P93n9PZNYHmkMM5MgEz4X9sqHUXhQAsYOE/Zl70vTMHZiDg+tHqi5KfQqu1Rx33FOFfrUN/07Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781346394; c=relaxed/simple;
	bh=loGvK11FhDpO4QjmKXDdbp9e04wqVZKdrtr12a4Xgfk=;
	h=To:Subject:From:Message-Id:Date; b=cJGx559l0oBeCBbZ7sk6WKPPVwfQYWyRwiGuD0tfn13UnF2kJtgw+p+fZgFO3AkVxxsJbvsodaguDXfCdKLlrb1OAlCy9Kma3J5Kd4gaQxfSAItDJsVSTJRZtSvWJD9uinDav+Tsgjg7MFUMbFWAEWAW0AMbKWovWPL5QBYIC/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eao/yT12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eao/yT12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C994DC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781346393;
	bh=loGvK11FhDpO4QjmKXDdbp9e04wqVZKdrtr12a4Xgfk=;
	h=To:Subject:From:Date:From;
	b=Eao/yT12RkFw6BZjc7VSz+5IiuhGcp8QCgOXQI0F2JgiXEo9CFTTyMB6hYW8Yh1Pp
	 3f5Epl9z12h+42PYRl530FYIe5eIevrFxE/Gj/jz390CykcAFrRB+OfXulPPB+qZMJ
	 udjmde37ocw2xPabze7fkI1pslrdiVVyyRq9u0Kq6myrnuHRMpQkMzwKnh8K2GrgTy
	 1xSzVZ4UIyElSz2rSqSQ5ZSQX8vn/btTH+8AXypo3mL0s4UWOaDkHFEZ7KiEJB3Ikh
	 nX7Gw0/RKAJ5jnmsfEl8zFKXorb1deoDMwIPpBjBEE4toLHjXFw+7jGQ734FQYTB+A
	 FjR9kQkbmCcuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70B8CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134639367.15785.2017104198445884585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f67e697c6b8ed9a7fe4acc8e35c269badc2d94f80f20868a5837d60122da2d
Date: Sat, 13 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781346393
