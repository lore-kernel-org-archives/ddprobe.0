Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6782CA9
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 22:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E275AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 22:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682549225;
	bh=Dbw+R8N7zcS0cR4923/WwEXKz+8eVu03l5RmbJzsm+E=;
	h=To:Subject:From:Date:From;
	b=HDe/HUMFBVXH0eNJrD0pZE4ug+YUBKVXCqd+sL6X6xBwnWh8RyEt+38NtEb92BipL
	 LyCNOsG8dDE4aLFR1tmxGUCeOASSytXW1b0bahaIcTb4fvYN7WHqlDsXmLOcvex+sP
	 STTS/1KmALO3ffHe++8ylCr6dFnjEn/zCXMTqd4GpKCFcQMze+YvUu/lg4uOSDywgY
	 CxWAZ+l5Rwuh18uk7Laz/D//X8MBBgW1jA0XMLxTXmd7ZyMzuRMNAkod7i3CIcOHXD
	 DgRIMOT3U5x+3mQlBNWNjzuOTnC9YE+Lt5oHeWDDQAxuiU4e2zROPOD0aasgjm8N6c
	 9Qt/MshgPvuvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96E8C7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 22:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168254922581.14543.5184447496955378780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ffcba9cf33a07a9bfc3ac121fe7a746428ad1dda88f2150d3d7ab13f6d91e0
Date: Wed, 26 Apr 2023 22:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682549225
