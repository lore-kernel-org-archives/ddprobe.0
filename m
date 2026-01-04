Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352B91D61BC
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767492834; cv=none; b=q2JvX9bFind9MsqEPTq9Pgm+vbVNi6oUet3+Lzqzut09FlH52N9vwYnrr8G6ZKgkaS+5hJV/9RNRGA0ooVwfyvRmc+n9lPNWX2GI9iezaWBc390IUEMLTwTRh8eaU6XOj+Az9nGSP/T5IpA6kkIpRw43881ItuwdlYjgW3iIdhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767492834; c=relaxed/simple;
	bh=zMgPMmKjfcIFYjoesNbCOBSEp8p9/J4xNObDOysBQ0E=;
	h=To:Subject:From:Message-Id:Date; b=iovtk5vsmh2juePvbtyoOVU5D7D9B4Dr1pQ9O8bYr7qSCp/0kXjt7iIkCS32BKF2euU6FLeKAP5uvPGIawBZTvuj0eoYtKf4cJ+ObYO8UyWl3rmUwmzFNslMLJPFjVpXSEqbiAZvgkcuGiGPgGsS4RdKKIFukigOlw/eF202cm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7qf1vzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7qf1vzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A689EC113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767492833;
	bh=zMgPMmKjfcIFYjoesNbCOBSEp8p9/J4xNObDOysBQ0E=;
	h=To:Subject:From:Date:From;
	b=M7qf1vzoM/hz/SjzF3DWfro7kydrB8UTAtsEoPBg3mL89iSz0fDgLxZ0k1MqQ6x/5
	 7biJl+27wwDm/7y6Y4uj/gf2sK4zsbvgukUUbi9IbnCK8HLhlR1SzZ56hxWya5eO6h
	 6l8pmlFTiRXOv81cux5HM4K43oKfS9Jv8OnS6iHU7p5N5afyZPptp1WP6A/wUW0Ioq
	 VsZw/Ik/uVqqucY2IzkMwtcI4D/3oXcqlv/oYE08aX3kjC3im9N3txY3jkJKYKdF85
	 BATmfMeqYjQrRWUL6Tqd2SkQB6sBmv2JUEVVWIV5f1I4qBp2qqIDLK0Ytig3Xe2Ua0
	 vX05Hw9cGfORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A76C2A06A
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749283358.11216.14664424801405212037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34f3e56eb2becd4930f8b9376641efaa64faa41b7f12b568917084cb991cbc9
Date: Sun, 04 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767492833
