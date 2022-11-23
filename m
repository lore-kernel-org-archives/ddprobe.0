Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3FB23B7
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B76EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669209054;
	bh=jkzO3bUBPqQUADixAztd3TQ7JWiHvpfc1WLma9tQCf0=;
	h=To:Subject:From:Date:From;
	b=qdaB91yd4fVsMp2Q6kWYQGP8JPdTYl3D5p4jukw7OZHXObBnnl7Y4itnqfgBIKWCH
	 Z4zLZZjGbf9E/57YAZSNBBAgUOadnVzvU7yQYugcUrfzc85voFrqkeUWUwKhfwqWWC
	 tD50yphkRCG3mSLiEeMdKdbGq4oTNAmRT+53L4uF8K6Y00RbMjrU9rPr0ahAJk0ZIL
	 qdtTluFzSF+KXh/Yxw2YWZp/DSvr8xLtIZF5uDlQknnaB9z9rrfGqdNn2P5Ok4x79o
	 CqPwOb1FDfVUdcQTMHAGlfKph3+CfhTHh+MtB4fATzVatlyf7V7AUE3mTvG93vSodi
	 c6Wy36GdrIeqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51109C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166920905432.21376.2698124188749497246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220a0bcfc319a06320b153f9b4e3f940f81fa94f665a1d706316b72a08b1737d
Date: Wed, 23 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669209054
