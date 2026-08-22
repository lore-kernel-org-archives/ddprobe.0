Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6822F9D85
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787437834; cv=none; b=gqaicCIzUx2GAYO8T1KZjrKKIMSwQTE1t+n2qTqGLDKE7JsnuMRbcXsopMP/xy+ofjDV+xo41gj2V4zi7z8Ko1L8WarWxbp6kXdCYx4wVzU+8iTD1fEO6qz2c74HqXRWpW7uq8WehF8g8clp2JgeoDU9ubvIzBUgJt19FD2Wy18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787437834; c=relaxed/simple;
	bh=+/9X4gAmrGmJut9TTk1ULUQakrZ5GRdgxkBq5UmL90Y=;
	h=To:Subject:From:Message-Id:Date; b=L7vs0A69k6WDRV/V/H0C79SWQxkwYChHP1eW4KFVAq2++atlXs6LyVIjbLZTu4o7Vr+r9JSQxH5anK+7zS0XIXGMb83gZeJKiDdlJ1GZK2Ch2Qr92S4vTF0bWjCVdp36/ZMWJ3yVpXEevbyH0FDkAYgTc0KVc0Rs3VbxuEGe+tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=To5KvLNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="To5KvLNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5269C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787437833;
	bh=+/9X4gAmrGmJut9TTk1ULUQakrZ5GRdgxkBq5UmL90Y=;
	h=To:Subject:From:Date:From;
	b=To5KvLNxuO77pJLkQB9Ph77eMLrrtiwFQmnDpS0kcBY1pF3+jxiLDGsmm3oAJD+O+
	 8r86OSu8mlG2tAYie2Ho3T7N91rhTs6EV/kbDAzpv/WsjbNFVBCmfRb6XtODJvTcru
	 pCN/Z/kyiXY1EfBUUF6C0AT8fP/DPBvJ2aMjvkJYD2cwCrKT6X0ns7Q9H7yaaFQc8j
	 yMc+lq7tzqN24IqhF9J4Td5l0iNvsfjrIs+NG1xM97hxwRom2Of/AVa3JIxT6YDokA
	 IjAHoj+ce9ETobuXOWbWaYQZ38eiBc+2WdzszVr6tipQ0tWXWN7u6Q/3boMTQOgPVf
	 fifXv/G5Qgatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE12DC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743783368.345.2491512134608585513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb634cb37268a2da45433f6420418655ad827d130b2090572593ab9db05d74b2
Date: Sat, 22 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787437833
