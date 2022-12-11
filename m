Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87861FCB
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF35C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670772087;
	bh=6czGu7DYYzZSL4cmZ1KbRKt1kqgGJ+EiM28UW13g2Yo=;
	h=To:Subject:From:Date:From;
	b=UknbrDimS1n4ULR5+jpQ11WCi2pULHpr6n6Sxl2sTaqJwAbfk2tdEWmQtx+SWDPzA
	 UO+22R2GRvGd+hYQS69axLcgdJXUHi3e5n63XKbeuiOZt/yDP0aig7Qvvetw6y8EpO
	 v8hRDxI0omNtwEt22vZdv5aFtsHkclALcp7RMbA99RpQ0t9BuLcchXtb2kw1JAxNqK
	 rremoTRR0YJPmSOXFzFxwx/NiaHfCYgNUVsvpxdPh5Jwd0EsvhOhRLd45V3L3I8J4B
	 ufMjqZaRkpd2IaGmD+0wN6/Q6HAdrdUzP87w1VUYGH03XtLEOo4p7lZxcgcStkOwP6
	 BgCCoBmsnEO9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6620DC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077208739.1254.7226168831054855849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fd228851792ebb7603ab84fcac0a3d19ed2a31f5accba36aa346f33cfa37f7
Date: Sun, 11 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670772087
