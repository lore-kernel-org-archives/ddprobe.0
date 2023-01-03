Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54F37E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C8EBC433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672714287;
	bh=w218e7HbxHjHQY1hhBNYQ+QaGeHrCC1GdoVokCYxPZ0=;
	h=To:Subject:From:Date:From;
	b=pLUbASYiFHEiK8IaIlblulnYAWfBmCRk8xVJz/eDcT2FAn21sU9DRBSM5yCL+pLt8
	 3SMIxS/pEdUGhxayLKqLox/bzzb8AJS95dcYAKx0WrnD+6P0FH05qdj9lIGaEPZsX3
	 j46XjNm8wQ36S2mSMk2Xv4SRDgKkLWNeF5EQfTzmFdBuUY44UkGKA74d++KAXdYjgo
	 KZFJ2eh6L4w0OsZqvFJnf+BK2eiTq1elTxnS1/3pJ6dy3yK/+MjWfyeJySjQOuj0Y2
	 QU5I7GmPIMFZsmno2Bhh+yOECImyV6vVOdbRPEs8owwVfIDV+l53wn7kDrp2Tg5zYk
	 R80rxKADDgHgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C29AC3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271428743.8806.11698430320039027124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a22c3ecd19e3819393ecf1240938742c2ede127f8d52176996374386a835b633
Date: Tue, 03 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672714287
