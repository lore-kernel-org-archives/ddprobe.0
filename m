Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1269531ED7F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767701634; cv=none; b=pkmHtpEa9vp+zHKgF0D8olGSkLbSppOXDxY5HGlBXBPy+TgAOHu5xedDZY4aq5NhBsCeThJduZN04zBSFfWTCorsJ2wOQ1Hen5Fe+9Him370n/ZFqqH5uDw8EVjCWADPwpRqwTKsuLBDLvqWXN3JKDiLjvd5vB1k9Hdd22lcGqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767701634; c=relaxed/simple;
	bh=uO6NGj4AjglAZngkNdMgiaBZ4B1oFInX9ki+IQ+DA0k=;
	h=To:Subject:From:Message-Id:Date; b=Zk1XUjeW6qASipaY5eBk5vNMEn6lSs2rEQ1b4BzQdnX1t+dqXiVBXOeSMX9GjQTicWT7j4+irWvBj1/8BBQpMUCRXSVb+b9g0f8nSgRl8PU5hdOFbjRx+Wrics1MxgTucThhkuKNdbjYIduj70PhGlKmLWBct593RO8HcHUt3Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBNPXIlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBNPXIlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EECAC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767701633;
	bh=uO6NGj4AjglAZngkNdMgiaBZ4B1oFInX9ki+IQ+DA0k=;
	h=To:Subject:From:Date:From;
	b=MBNPXIlLA7UTeIwtkw/jetJW+v7Y4gCBtub3q2nmFgMCzlb05IRDn6MrYsM5xLAWi
	 eyZVySLUdbrV4qnXlEXPEs1U2BgJAhmacLb5r4oEVJ7Dnv2zfY6fSSTMxdFipESOfI
	 9WLa64xS887SF4myqLwo+96h++EIJ4UbHSjR1mu6o9qvGgnbgfK03gZj+XzGVt8ZLZ
	 XA92sEEzYG5xnl5A86kJhD9X4WO3KscgoXMyPOjn6aGBXDrwIChGCqSzccvzcDN+hi
	 UKE8ZbXFJNfhOM6XTSKTTvEbHoUxHPrP/zcbbjRBAI49UNLIUexXMQ36PPWLn40hpL
	 4S1I0baS0PaFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82BCDC183
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770163357.32266.16569014154856246103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2ea9923ad449d6f0315f82870c8063bf37333a378136d29cc21bf7dc9996c6
Date: Tue, 06 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767701633
