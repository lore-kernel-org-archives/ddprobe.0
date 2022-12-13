Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A3915B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B835C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670898087;
	bh=9+LKU/2XPDbJdqa895nL+MJVji/q6HMDuLQezh5O1pw=;
	h=To:Subject:From:Date:From;
	b=aNSnj1tvVHb2NyxLXLm+8WHJ4rAb4Piw0CoqYNz5955xk7a4L+RDW1JouvkQMcyCd
	 /QE1UefMFfNJH9hGLW61sKqbMfdKO+KPVon/zlOdaitJ/LbR0zP7rlPwry2vZcZPBw
	 rquWyK6HOChSeGSa7X63E6fcTqUs9r19vqGIAGv6vawTNysoVvAQw/ZYwW+Q7INgTC
	 EnwCWDnSGqb2BC6QQvE+a2YRKxtqh9A8OnWBhWkBHgEwqKCUToYCwjxTt3J+ApETs3
	 znQAuW2RtSDXSm4JxBEaZxNn1PvQufEciKebMLZ/8OvUw8UNmC5xng3KORUYBU4VDA
	 6hImFoNFB6hWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60872C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089808738.9277.17072103931305266268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e99dc2b18110dc5126ae97b9a005f9844cd34db53da7c22436a5993cc2a37f6
Date: Tue, 13 Dec 2022 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670898087
