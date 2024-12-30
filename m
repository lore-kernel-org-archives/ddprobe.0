Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B61D530
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735540554; cv=none; b=DntfePS3BEHiXNOd19D6JM3sVNr5ertHbRDIlUZftkjCUE5uSU+l+kByzYaqsmWYRmPSZgOAV5LoZrEoZwWFXKonaS521NzMyocCnHbRcDu2+uK/j25Mw1Qyj4+BEugWdAupOZ4AfF68gOut+P0mrAYScXZFtzW41PLV4G2kzeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735540554; c=relaxed/simple;
	bh=+zB7aaK1cm6POKwGF2HAhztvHuaWgcTl7E0D34hQtzs=;
	h=To:Subject:From:Message-Id:Date; b=aDW9LVYESwVBZ6/gZC+d+V2zPSOPaubrlmYIu4p2l82apDVj2N9KNKExRuI2L8u5qf8vmM1rFbBFSx2UyMskdVH//Ke8b/O+IpgFEBBdlvAcCuJ3qXrTI7WukKRwWyk26+qQ3ApknVMpIxOtBFPHk3bDNSw2zshA2BZNqEc2VOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRZeelAY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRZeelAY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0E5C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735540553;
	bh=+zB7aaK1cm6POKwGF2HAhztvHuaWgcTl7E0D34hQtzs=;
	h=To:Subject:From:Date:From;
	b=QRZeelAYBWrfxdgvyIdkNNFklAuRIMYJF6jVmZsDfnf0c8+n9wjIUEaZk1MMbN6Dl
	 VhnqJ20zCZAXfMBD6AHlO+dVBzhRcdF7/WboOVj+KAds7LUDp+86+txqSeIAWSTMQI
	 CaoKa7nTLwkJQzQKxM6UrMOAccIOiUhhrFCm8XMrz5Y8raEq6EemTXVZE9RR+X6rHB
	 T+chdzG56AR7cgZkXk66Ln+SAu9Rxh5o+qMwP6aRoV9mct21ActiZI1wEdAwU+pzJ0
	 stM+GQAZ0TkVx+5wryDPgd2sMnkTw9rCnNmsSAYDKWT8+LtLVDVuRYC5y9/LCZxbMV
	 xyUu7ZJN6Iwvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D1AE77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173554055358.7739.261376266765880301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd806e389d89a9a8823c484452abc54065f3c032e0bc46d03167fc132d70c70
Date: Mon, 30 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735540553
