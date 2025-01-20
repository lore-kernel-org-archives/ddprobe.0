Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3470F537E9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737354954; cv=none; b=cCX6zgG1cIv2zWxNJugknra8o4Do0r16eBrotT2HkK2Or9Gs08bzd/FDRywcoCP9htQ/i3P+2eSxKNPVSXmL0oBe/S8deV4VImTXJQPQW2YLCaRkDfweyydzfIm78cn4QVV0T60QjA1HRaC7W6xzqOZYxZp5k/ZU7QvNWBb4c8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737354954; c=relaxed/simple;
	bh=4xR0eiS4J2Mv8h6JmpSX8ynaHp/bTBBfu9ESEeGGw2Y=;
	h=To:Subject:From:Message-Id:Date; b=Hhtvw52ThXf0OMNXFiYCZovcbjBinmey0anJZWBNUDXDpDvIV9SMxMojaRRg44RzPruUMz28ITU2LwWrz2mFbsbRqvv4Qh70N90M/9ukQXKZeCOwWdw2KvX9i2hK6LHhHUoi3fhjo1vypy37dZ/7REV6ztNzfU3ksxqXq94AHHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZLJK7J3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZLJK7J3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72C5C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737354953;
	bh=4xR0eiS4J2Mv8h6JmpSX8ynaHp/bTBBfu9ESEeGGw2Y=;
	h=To:Subject:From:Date:From;
	b=mZLJK7J3JeebZUyk2ASz1AJHqnxR9ZmpAc9ypbIMU/H+Rsx+kAzeytNE3wxiZbALR
	 Qa56tQimJJ6hdANUXx6IAZyu7yRK8f7qocGFzeLBzta+M9omlNty7O7xGuoPsMBr6f
	 VIZLTdPVWyv+Z0c1nCOHXoQhXDZNkkT+xs3AJj/PIL9HtEF+kZ7Bwo9sDHBIv0WRxZ
	 prxD401EquBPvh/Qn2+IEM82hzhD2j7IgyN+hgztHyYUWCFEurwoYwm7vVu9Kx2QqN
	 YOl29pyeslEgW4+GqP6kVNa3HnTirnfVaHxBWa/XAP5y+Glot5R+5svIo/7lB//ygB
	 kRNULozuaE1Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DA9C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173735495358.13734.9465902982149214420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ea92570084069d828b04d73e11e069f465af5f12813160ec0ec42cbd7322d21
Date: Mon, 20 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737354953
