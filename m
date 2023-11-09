Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D2B110C
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQ/4zd4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91C12C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699494496;
	bh=pHMpdrRAFRy9oWozWLpxgWwBBm7zuks6hEyYaTFVzB0=;
	h=To:Subject:From:Date:From;
	b=LQ/4zd4mm3QsbAf0gspkoRdpxKU5sR88XBONrhU+iHM9aIqMxvJFkENhIzDbXpNfv
	 EkHpPKDjZTcWv1sS/qiaumVxFDQ7eltah4KVOEkFRqSo9AtYOI1Fv3yxw+lBqtxSy7
	 +qwZDAFhRF56HpYRzRAwpF8MyrZsY2GMQXDEUvN9ERfuNkaARITDGeq88aN934XCBP
	 PFG6FKvc5OlfByjErFMKh+t6VK5osIcyAMnfFKb1aQryIAVBL1T1XkMarDwtQdgna9
	 ndWOXVG0y7CPlu4qPH7RWe8Q+wgoAgTCnPM/e1tSASOeMRHg9ybP0kQMO3ZbaoLIGU
	 14Oki4D6hZ1HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F2FEC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169949449643.22786.17833054077450865902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec4ebeceb4c2bc6c117f6dad47ca2e75d8448bb09f4a89dc1c04e665ef18bc7
Date: Thu, 09 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699494496
