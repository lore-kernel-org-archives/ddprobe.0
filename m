Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198BC1DDCE
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711996697; cv=none; b=KB4Mrk5UaWdmKjqk7ordKkvdniGxwDkTPAnOeTaR237KL4/TkqrebQXOQIEJxrSG0eQS8/KrIyURrDbp1dBTpM1UgTK/sh8kFpMvYoZFvibvX1NlMsZCtYBdqwScG+kNxennMNtgg/CQHcIW34NMPPicOZWozXDyHUhU1qRs2CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711996697; c=relaxed/simple;
	bh=CnQEV+alQbC6Zqh0Ru6IcsfZ6nTYdfoEYfDz/ADe4Co=;
	h=To:Subject:From:Message-Id:Date; b=NUxrurtApFO8dJN7nUVMOPZAWT9iJlR75eSlWe1qmKYwaKp37ffXHnMQ75QO2kg605zejUYs4CA+siy/XdnUUzWSmjkF5GJVLmyASKWQg4aa4O2TYG6cGLZdNJANl3LB16LE8xbuiafuHqUAJMDUjpMpbJ27kFJ5vgEm8Aoida4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujN4T+B/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujN4T+B/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FEBCC433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711996696;
	bh=CnQEV+alQbC6Zqh0Ru6IcsfZ6nTYdfoEYfDz/ADe4Co=;
	h=To:Subject:From:Date:From;
	b=ujN4T+B/1FCx1Z2fBTG6Y+wog3QnSGMm+W/XgmGcChYiopKyXWYeLGGXLodfHhO6J
	 H4p1uHb7y3ZE/0Tsvu88n9V0+tKy+iXPta6c1HuAXSFHjR91k2ViGg+wIUmXupDOTc
	 3vttZB1tz1i78q9CJV4OXJFb2S5ac2Ju+iapHik1NzgBNft3IfEyVXfFXKyYvSch9x
	 E2t9vH6TAS4HrPdlB2AmgxlgXpjnRzcXdv5SbZEfZOWLifFE0XOovb+UUCPZth/+JV
	 YJEU71K0sasEGdR74TIOEVXBxiLpkH0+3YIGwA4A9zAi6Hpbj5JIg/PalXKdglRv1J
	 C656+5ZePQNsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696E2CD1288
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171199669639.7704.15323688753073165219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f7e24f85c351517511f7425aa224e7a09a58d5219d13fa09da33b482352da5
Date: Mon, 01 Apr 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711996696
