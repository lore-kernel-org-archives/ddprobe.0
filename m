Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC03364
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24C0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671301887;
	bh=Ip+KtFfVzKq6EB1MPPeMrDFs5w1s/0rl6n32QKoIrgQ=;
	h=To:Subject:From:Date:From;
	b=b4irKAqYA3NWsO6He9WRPDgMFccFGtGJThD3/Y3ugJixKfWZ70HO046OjwxkRxnyY
	 Tj+YRbptV/ML6UxAqGBUxfkWHz/+xioiMjGjfVBdpC0YDz+ZHvvZcLngYK+GNes/bq
	 YJHYRoHgmMLDeanZF1sfPvYtIveo6kO8WBnaXAKsNCW9jfSLeqbUTEsrXb4IZMG+SJ
	 dqJsX/mMuUfY0Hen/ivXKK6rw7g3XPOVegrs12Q8DDAAuXqM3EYI7oqvTWn11/Ex26
	 CUfNUrZnC47befJFDxRItfOHkXa9k/ETASG/yCOlODFhLkwtua2JhWWSFgUrJD0mGR
	 WLGSA9cqQUZ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3718C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130188766.19627.9883793448828857275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12aaa22653057f308a04f3d462bafef72f77b7c97ce56446f8f4670a097ab0ca
Date: Sat, 17 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671301887
