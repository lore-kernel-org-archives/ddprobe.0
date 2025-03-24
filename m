Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472BA19049B
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742854795; cv=none; b=qxUkQAPisvhFKMjJRVqvZ1XThQ8ISPZWygNtgdL2GO/vawJqwIiulhs8jCBuggs3cCW6NiwHSVq2apJMq7H2RmNKoUqbjRgHIUb5159BjHkpBGjWHd9Z4wS+gtCmT9Uoga138cey4cFGRmRAOsaMO/f36CEoQELY0+/VQrzbyTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742854795; c=relaxed/simple;
	bh=GAsG0TQ9BNfOHBLkKTh55iSzHcnHvFK6G9cdkwPjBFk=;
	h=To:Subject:From:Message-Id:Date; b=qebSGu/ss32/6JaP0P/d1B6DgY9AFC0eC6eJzNgQkQzDK8h9cdtm7+k12tQRoKNMfczZYVRJ8DrVXWpVpQvJxfUkumb9sMGKGvLcJkOTOHTuAGS8rTzuvBobiqyAuhcHKOQvYWVR6ZIcZK8KPRrdQG1nKW2nNod6PiHxumWS9KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2HgS4w0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2HgS4w0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2647C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742854793;
	bh=GAsG0TQ9BNfOHBLkKTh55iSzHcnHvFK6G9cdkwPjBFk=;
	h=To:Subject:From:Date:From;
	b=l2HgS4w0+kkLIYeKFYl3WnKzm/fcK9aQILx4k08ByYbAm36UZ9jei0K+5d54D57oV
	 HpePmwMCDhcmcFt2ivS2BkBXX8w49wTGNGKpsguXjKa6iGW/4cMkDlrrXoe+20YqEf
	 FRX0gO0fFHPI46nmxhoszi0BWYo79BiCyUAG61SiEfjqTfz9vC+tSY6v5TUlsJVX2c
	 FyQpICGt8oQx0OczLvZC/aqVy9W25gKmXG3xI+aD9nXiDdXe1d1ntAMQkjksk0Hutn
	 pGlnXItYmqAXcvDb15by+/g/z4KJyB7iTFoZjd3eA1Td0KEdKMAmavoqG6LwRKINpv
	 ybDzIFWCvDv0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A090EC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285479363.9670.9408067747019610521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd1ce365fffa589e002c16d7f87003a340b276473652e53f023bb0a899c9ff9
Date: Mon, 24 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742854793
