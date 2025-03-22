Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5DD2C80
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742617193; cv=none; b=iUPZBPGv7GmTxTVJjYJUa7vqiP1B/26BAF93q0pD2nrvdRBgntOECbpPhJNH3/c7+cYPfhgiykGzEPI97/TiEYvv9L60tkg9DNMzsJXtmzi4CHgO+hcBa8vEDAQD0+rFVNPAWeQHE3Bj7DYprM4QRDnQKsStyAEp93Jflww8vMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742617193; c=relaxed/simple;
	bh=jEKtwGPIccrX3M9F9Ax+l/NaHo3oftiiSBH22lzJ6IM=;
	h=To:Subject:From:Message-Id:Date; b=aPx7B30xCBdG9mUlJAA591bbiFZ4WAhc/7wwGl1F7GBHrYCiioYDrEFYYrNbUEtbBywyvGTTzu2g4OxTXlaSnZWNTmbJ+NAO3AxKAkxYOM8nC6VuEW+vlLYZlhtmMlqLdj4JOKm1mnSVtxcdLgwnHcwCCW8HFWvd0yODGj/AjO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cxJaOkxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cxJaOkxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1679C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742617193;
	bh=jEKtwGPIccrX3M9F9Ax+l/NaHo3oftiiSBH22lzJ6IM=;
	h=To:Subject:From:Date:From;
	b=cxJaOkxWKSb+FLOEaHlDvfXFR+ZjqqHkidq7gSs7ehD44WX6CDywDq9XrjamkRmxE
	 o5YqFBEXTgzeBSle7ZMH7VjL7y/3mMOQgDRcN2a2/UFahH0Y/pjvwje8kGT5NyJHHH
	 UQ+Tmm31olJ/kml0IeZWNnnZoZJp9i1id91NrnykMq//RjmgHZasTZu04FoOUb8fsY
	 +dwVd6P9mzkg2030z7Tko5TFloDWT9ihmYuNMXMxu78pxKH9xit2m0L64qPnIJNcgh
	 QHsFaxplTWF92YeQcuH06sOjsyuDdJpFWJGmQTBGEQODek8InWVZfohzNnPSdfE4LE
	 AdNIkgHHfl8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C39EC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261719360.22078.14580300464974385109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36474ae0a2326a581a3ed258234cbba7d208151ca2ad4686958049af37d64eea
Date: Sat, 22 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742617193
