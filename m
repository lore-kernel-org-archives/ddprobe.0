Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B4B1E7C03
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749158994; cv=none; b=Juz888VMw12NvLpMeCSUSFx8UrtSVkOrFqo1veO4cdzAdy0RIEn5rUXvCVfMvHvDAUMPnaRMR/pKnmIpWQPnavXT9BoIjanPkYMX7l2GlnrSh6nVnClmTvtRBlb46M0Az5BOFfh2pf6tAEerlUhR+ot4rsBlhIxbnTB3GxL9jMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749158994; c=relaxed/simple;
	bh=w7bHJ6yEcTMplQM91qKOBG8+/yyeJs3I4aIDjMs96hs=;
	h=To:Subject:From:Message-Id:Date; b=q1RdrRF4JGDrHuOqu77uCb0CIC4T21b3XIgAo60invapNnylvHizhfNIAYYt/Y9coJhlCl5W/qgJdjfWgpiV8jpeyJRhRVd7t7N6zRJg/jomiz0o/vuHyU47PYw8zVETxfwzSJKJufjDUNX+AIf+U23CDFk2/EYVWI5agbU+e9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awdcRyoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awdcRyoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD85CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749158993;
	bh=w7bHJ6yEcTMplQM91qKOBG8+/yyeJs3I4aIDjMs96hs=;
	h=To:Subject:From:Date:From;
	b=awdcRyoQl27RgyZnqxVQVrQ38C2BjBGsxdMy9S2OafBL/tBett6GXbxCq4TogRRCw
	 VrRcVJY8Bu3gJFbVYHj6OEtXjZ/cPHsjyMkhNDZ1BfFUm4uNwJanZlRCLT4IwwEsuS
	 4Z61qqSV3hI9Xp3fxbyw0vm4JX6yflLlVUFcDvr53/MdU29NZNiFUlKu9RYYkDMLHy
	 +Sej/5N4KUt4bCoHqVqA8ATwu0AiziYjVh2oD1f6lJBnYftrFYKR6dk/NzP4roDr7l
	 HQXl9mD6tA7Jn7qkphnqZFIh/2DhR0NE4kqE2PIX8WU80M8dkOTFJDxnm/OochVPVE
	 UpwVta9o7DNgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F914C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174915899358.15577.10598880434055571649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e256caa0d38b81fe2476992247a130ebe608f80eebbaa9f9aae47d47470101
Date: Thu, 05 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749158993
