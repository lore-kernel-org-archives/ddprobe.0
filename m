Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042EF1A9FAF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767933834; cv=none; b=n2DArY/VB/MJ+5k72lv3dpNp6bzHavetNGWHehJf/h+byU7LqIOfgpC6c/MQRVhhKFz9XnzCpXX0tj50Kj+WarSe3ljJzCbMjIokMaP2/0QDycTeMEqb/nKTTfFkTmGKra/l3jqf2zkmD4l9ojVn10F2iqnKiMKmhr9QL1/D/68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767933834; c=relaxed/simple;
	bh=G/2Iz7lM2zF/1i9zUF53jMiMLU5XDzXX5vSHhqhwqDQ=;
	h=To:Subject:From:Message-Id:Date; b=ZKOY5p7L4dGp6UOsPgEzathdtRZzcSm00XWBjDe+XzYXSniZT5u7z4zd3eEp5ZEjOswJ1NuKrkWatJnzY8V522DJcJ3xTP6cbsFu3oLokaOaXCqgFCnSggUdNL7JA/mBAy8jU4BeVGf6jqrS66MtUyEKSSb5nCvj1ZrCfe4SuV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/UbNWj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/UbNWj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB8FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767933833;
	bh=G/2Iz7lM2zF/1i9zUF53jMiMLU5XDzXX5vSHhqhwqDQ=;
	h=To:Subject:From:Date:From;
	b=h/UbNWj4ZiqDcEfNSIx2cszO2GbJRF1Uul+dD/GV9QsszRwr9G+zIO5Myi97zb6Me
	 mQJQ267T4XIs30ruzxSUMdxJCSRYx5Gdwj/hyj92o3ypg246OBnwIX8gUYyMYBfzQN
	 h/3Y/aJy1H7NU4dPplheoMCaRUKVQW1i/7uKb3NKmSDhcND17fN9Q2olSrNdn/ymoK
	 rpMLrmUdhCbPv7tvXq9zx6Ww3EKdRIp7IuqQaath+43fec3uE7ghFMGyD4gTLgeD7w
	 kv5t11D5VwmsytduFZXTMK9FyTdb9UFY9Xm3dhmAbaaXCkGaB2D6nn1nQiVg2emEUs
	 glhQlNQ+XtocA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3F7D232C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793383360.3415.17235362906684528203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2c757193e3c4bd3c681650ecc3d5e40633f1aaad0aec7367097342c849c7eb
Date: Fri, 09 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767933833
