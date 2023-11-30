Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBB8A134C6
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkDuzXuf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C89C433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701311896;
	bh=vFZQFCAgzPvITskkqjd5k26pIpRMJqLgpGTo72sYbhU=;
	h=To:Subject:From:Date:From;
	b=XkDuzXufYXb6hyV9BOvkNQQK6H8I1aqv+DMYPfTssi5yniyyPKl03gM3m9IZcUMCf
	 y+Dm4ImbFaeiAfJJHmd2ltZJcKmhCV6tLOmgc7tb0dh4QSCevpInl8JA35gtRptiIe
	 682kuMvfK/KtNW2jIXUnKqvfMtCQtgOQAVfw4FV6DKOnJ9O7A4ATDmz1+wn4dbxufv
	 mlXb9wG3sbMSKW4Ki2Zke53Vm7lyHBv3GuyW1zZtIDQ0QGlXReCkB79KensQ6Ycf9u
	 /j2CUw1RgtIYs5Y0UCOfC4R25mXoozN6yzAyKeWO5v6xSD1yezYXe8NgrhyAhmvsSo
	 +YSo4cw4KVNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D051C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170131189637.29075.15740374554238103657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2822e3f9d0f37f24511c53fd8ba6b88e9d61ea7c7ce172ea44fc3dd2139cac
Date: Thu, 30 Nov 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701311896
