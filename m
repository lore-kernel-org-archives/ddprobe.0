Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3092568
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6946AC433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666882254;
	bh=Uxu2B4+NHc3kYkjN3PnJJ9vv75wkMYRd8ctKSOyoHTY=;
	h=To:Subject:From:Date:From;
	b=LiI1DYX3+10y7jrskiKMQd9lBUDIGoNLvfKUKcXvbD+IJEucME6zyqbYC8a3hxspn
	 sol49jN4R/qPFpyOtEKxrG078+OyKsRc1Fc0BP2jhVIZIB8JsqD5Sh3i4vE8Y/rSWn
	 WZQnD7zqKBw1na1/A3/QtHxoz84pr2XJiJEVjGRgSmT7/0X5UbjQ+cZI5mefV/V+Qk
	 JommBYMXY/aAuYqvVNQFj4TniYwzGCL/b4WE1St8nyOzfwsoqO9BTPdapSN/GxhwqK
	 nv0GCh6fOhjgEoIL6yxEANVwwnGR9EHXseNumGPSOHlFlKj/7ztwdHUwbZp/YZLaWi
	 vneNWlH7f6Dpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C49ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 14:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688225433.27668.37225408440891257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c1dbcb231fdbc024db687fbf71628e7fb758e30ac30976dd0425ac7519b4ee
Date: Thu, 27 Oct 2022 14:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666882254
