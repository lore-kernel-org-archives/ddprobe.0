Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4CB139C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 01:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8EBCC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 01:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687137608;
	bh=nQe10HGG/MwQUkxY49MoJJwZa5p6PDErOaHuw62yRxI=;
	h=To:Subject:From:Date:From;
	b=gd5Lga6gdaF7t3QWAQMyA8s9UWHNj818XVD0e7vZ3om30aj1f22h+KC/M759cDrHl
	 Cxr34jTSre7Jc5WoJh7eRmlFZJpI9jWQGNlZLTLWHhJX4smHm2SZzZKXpqAF0Kveqy
	 NHGS0avgos1BqWe9oDfVLBhW9xaKJ9gNNW5B0oqexTeKJHwgtySC5TA9ozuuxFDvxy
	 Usi0tQRfcjHfDuu48HqVID+ax6iX4kuAXBxEb/ZbZreZyQBf0O7qHLUdVRwecGze1Y
	 SFKpt0WXglnnGI+9FQJacFq5Ornk+g5eCkeYdA3Rh+ff3v8lWYeYaiOsA8lw5DW30v
	 vEkLDLUnloWCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CBDEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 01:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168713760880.27669.4671832081487755748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6a89a2d4d25c35c0a296a1ad02e4e9cc8a9dd4a066fea44340bb88877e9c19
Date: Mon, 19 Jun 2023 01:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687137608
