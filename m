Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274171422C2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721763954; cv=none; b=O/i0UTU2P3VkgYPzM9d/S3uCKrFmi0U8ItAyhnao/4VPF9t+8yb+QMCsk559xrVN7zrhIPYYvUKjvssCt2i0z4FvwHMEq8EDBjDQP6KT/rffDDbK1jjzeaNuX2JwlPwsIaWi5vLubZgQ3N0D3Zzu3bW629Ay2qLJOoy9jFBw2k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721763954; c=relaxed/simple;
	bh=Tu68xd1ZSj6OVM3rRNivaK6d1ye7RHpLpS15UPgg0IA=;
	h=To:Subject:From:Message-Id:Date; b=tRvMGLaokj8ZigTPNr6WaLh4IMtBX0VgHw7fbxwe9vLEoQLZobCB3TZ2OpuO9bU2QoaG2u+1Zux4ksOFRwIFa0eP0CCujIk+bj9LitZH5yH+9hiYIgejBAfj/cht8joL8sjA0KzCVEBHvsGfwosakdR/zRCCrGJHm8jQ2VUyC44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZ6iyclx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZ6iyclx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9688C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721763953;
	bh=Tu68xd1ZSj6OVM3rRNivaK6d1ye7RHpLpS15UPgg0IA=;
	h=To:Subject:From:Date:From;
	b=mZ6iyclxA0E/qfbyi1TXDLb4zXbkuGBZT8djJrJrAe/tIy8n686PM3MImf7oeQB1g
	 wy8pRPfsM+muahFB7HpQgkERmoFzyYp4l4CNbnklirMI+A+Mf2HHX04Rqr9Gl0zPnS
	 Lwi+5tZ+4Faln4N36JCy4Y3115KbJndtGnXTkzScaDp+CBzvHpB6wKcSB7DH8B6NEf
	 D1B13w+tr9sDlUOYXIx9lSzUt27y2fZNaQXCfomOuQn+90hb2vrYLiNk1Mufn4IfUf
	 6X4LXX5VHMiYAYWJiMbp2WvkdOF8xoRlWFX6iisJmrNQ+HHwA3WnldwoGa7vN4GriC
	 +JPwEAa9jAdaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB9AC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172176395360.9828.8402894651983989693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1069aa755f9304172246d63b329f88689f3566097765b729198c6d63e00635d6
Date: Tue, 23 Jul 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721763953
