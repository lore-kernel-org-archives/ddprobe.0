Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E3D17D9
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 09:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE340C433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 09:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674985386;
	bh=VNjJp9r4F5UHNrHOeCT9r42UiyfxS9lG9qlpkOLO7Jo=;
	h=To:Subject:From:Date:From;
	b=Xr8osZq1m6Awqvb4fjpQUFFKJ+8zXVLY1h25QmlZ2E5wdK+1CuzF6zS+VY4xVzeEg
	 dt0vBFaayoiMpBXfP/wV55eZzPFOZ4cg7ve7EW5lGcGRzq/QoWp2vUydeYVneQYRCk
	 bfR+vHN7+m7oennHStAHcAL/nh4meJvO96kVISkaowlMBJFgtZr3Lwnzazqc3CYTbT
	 5/UEG+rwXVafGvpTb9XLLfTGBSwxuzLMmTN9t3Bhianci+4xOoxfzrQbSJMoyJjZXy
	 Hq0Y2ii0JPbVtLx/xivLvCLKK7NcYe3SkGMdHQtqzsz+xUCfrtqwlzBnTaYEoOYqwM
	 RmO8wz+FZVsbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D50C3C636D4
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 09:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167498538586.12617.6992653747661626795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dac9ea556830fb501944291783cd24d9276c742143229643fa5f01ca348dd808
Date: Sun, 29 Jan 2023 09:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674985385
