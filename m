Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE5F2BDC32
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767477834; cv=none; b=lEcHBJEPUnqAxLxMkfv2azjh2ICiW7UxupwG5bGqlyS/13RDbzE5NleOrGVTOuNLNnfbLPrTPcV4yFdlkBrbWaR5I/EWTnHBc8mWEX8F32FRqp/ZmM8hPO/8PzwxbIBa+06k3abbGulgVrJTtjA/Vdv3s8GULu4WUDdgTqIfWQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767477834; c=relaxed/simple;
	bh=8wA8wM+iQOwDVuuuHYlHnH/AZwT4KQvEVxmU+I+sXr0=;
	h=To:Subject:From:Message-Id:Date; b=JavFqs5mrvou39oQgFmtAAoF0KOVsuYLHZ4wlj7+Rfr9Qly08U8XYP7kO+NiOfNZ6aKTW06jOsn+DARzdmTyGs+kCqNtrSzeuGv81hw9lhbE8To//KFu5wshpMjneKMZz4HQqFoFre30b1Xr+ZtTtHVCh69+JmCx4dzzziOV6PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrCiUk+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrCiUk+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96A4C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767477833;
	bh=8wA8wM+iQOwDVuuuHYlHnH/AZwT4KQvEVxmU+I+sXr0=;
	h=To:Subject:From:Date:From;
	b=GrCiUk+0J5Q0EIuQN9JaghZFZfHzhJcLFwRdBBSO/PiX73h44+ze37zfSP6XD2iQq
	 4zLeQTCrmCSrQEaAeDVBpqNic/iejK2LUiveWq2HnDGw7DuGsslZ5aGwAYiXTmhICY
	 V41BpX9D4FGOXAkyNkwh464nF6kugGKFKBB0P4NDkYOhDDnh0L9/1pM/CsDctsb1tW
	 8dhgA6V5Py/2fUD3G2eNyQhZ1kP8n3CsaNvlw7vYTanUSfMusvfgHKkUkhRGf/i4TV
	 YPwfRskX1nZKoD5WGzXStRs5QzV+0Pu9sRnMNKdtCXaxohRzv45vYH7bhDPOKmlDot
	 ZqCHtUY+UJfug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983EDFC619A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747783359.9277.8217324070215639091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6277cda5bec81694975cae7493098c323a9da0058409a92715376358648b5527
Date: Sat, 03 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767477833
