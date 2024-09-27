Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B255EAC6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727403954; cv=none; b=ffrk8VbNANqQmGu/KbNVNDNI5nbEKtON7ovIsi81f/hGR6QV4Shy5BFiRuyX6FCM4o8b2NUhZYFxro7FeCL18q31a4MWLme7Ltf5ddLAWpnMhBQuMW6F0RPFVvsRMMfL9Iq/w8sVmEJZqQ+4WJWgZql7qjfod/oY2v+CY8S2tpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727403954; c=relaxed/simple;
	bh=sxZI+FELohymmQ5HvJpkQ7Y0KXVurzmIa1h4jUxO4Gc=;
	h=To:Subject:From:Message-Id:Date; b=S81Jgec5HCHgsqUsUT0Pxq/INksIUIlTSkv4kMfHNm2I/FnlIkUIBTOlQtu3gTdS5kZIZQC4PERAgPaxEASAmDJGibxr/8qXO7EcTiMoytJZYsrvPEtbAV9xoNhsVvEt/vS51CHTq5HKSqtv7RU32ndHobyQtcqxuDDWaiLb4JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXG7b88a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXG7b88a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52E2C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727403953;
	bh=sxZI+FELohymmQ5HvJpkQ7Y0KXVurzmIa1h4jUxO4Gc=;
	h=To:Subject:From:Date:From;
	b=IXG7b88afaqRpZpOmObFyXb9zmeILdMD33a7XlN/RuVAprmQ88joJsvEJP/sH0aRF
	 VvkZE0qxpeYlcRMK2QtslfXtFzDfTXpq8AkREN9pKL5+IddV9tWYXIyth/DkGHFecB
	 4azIva7uuSHan4GRarPhbpy/6VhH4WGTLcgOz1Ukgdtlz7+zmf0ONLI+QVpFMh8K4b
	 HyvSm2kWnTIo9fvTqjSElxtdoeNGeSwZ+2u9U/rb/Jw+tNhSwmMFERRzaQxbJ7K/LK
	 WZ56qph1vr3zvO0IjaMBZBf5YCWod+xhTPNiVaYFY3iOUwsToUNhZ3axLDbBInZs4J
	 pOH001JLa/pLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30CBCEBF6B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172740395364.31892.15077417324988198823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950a39c77104ada834d198ac283e44c68d5664a0ac382ec639d43a457ff890fa
Date: Fri, 27 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727403953
