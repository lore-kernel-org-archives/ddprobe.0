Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF7D1B78E7
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736028954; cv=none; b=nbyLKUQDmbWJ6EIxirQrkV0Fy6VvPnZ5uFERr5KMPNASpZtNld2/O1F7vA4L3RY2ZmJJVPu5+vTizk+LsaT0mKrHi20lbMLVYTbf0mtqZbB0XJIdpnac3MJN5c5rqhq7sUBdvYvkufhFO/CYvSoc5tQ7b1CrC3/WjHHF14JZanM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736028954; c=relaxed/simple;
	bh=MLN7KXQf+AcrXConko6XjjK3T7tfcP69VdhYKKIuSxM=;
	h=To:Subject:From:Message-Id:Date; b=fMmiiKfNx4a7PU+0aobmbqBtRh4uc3MagF6SFeuVGWITuFaesnCuTSc+v3LUngU4Xde0F6tIYI7E5Pl7+VRVsdRJFkjnp13DV/QbEWpypTa41gqzbH4mGjRpxVj9gV7Ha98YzAYs0y+W+CRTAl/vNbdRHedL4l1+zyZTVg7npY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsAOv/a+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsAOv/a+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79BFC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736028953;
	bh=MLN7KXQf+AcrXConko6XjjK3T7tfcP69VdhYKKIuSxM=;
	h=To:Subject:From:Date:From;
	b=fsAOv/a+fPj5YlJN7PjZ0mUAxztYtKjJh/niE0AT2tn+f4YbUtzbLC3R9S7zOrdOm
	 J1Gd8Qms1CYT/bRoGYBCOzNf3GBLFkQv9XwMTUouuOBry9pvObWLAmko2XeEstJTq9
	 nIA6NMOxVNuQr0KOrDAQuG3Kkh1MDLR6CFdhfFxUi+QKnSzl59g5SLC5rbqrqDVQUY
	 y8Iy7e9HL7XII1KSfNrL5+//XU1q1OVd9I/IZO4AucyUIuEZz9DcBJYmcjv4kRh0Ya
	 wnv5m2Inw61erLW4Dov+HGUuJIdEoHdsf7lyGQ8SWVXJWjKrNNXbfnaXVbWv7H9bjO
	 impJaZ0VR/U+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCCE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602895358.15896.14281123134657335087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed5e6588a49fed52ec120779fee499147091f00bd7ae6526dcc18e6a8b1e646
Date: Sat, 04 Jan 2025 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736028953
