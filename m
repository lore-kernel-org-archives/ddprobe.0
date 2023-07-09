Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1617F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E473FC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688938628;
	bh=LDHHOZ0GMo657CUsLJbBFOobdoHwXDPSRpDePZPjZ3s=;
	h=To:Subject:From:Date:From;
	b=MJ1ELVqnX7Q07u4Wkm3Ji6m+gBBj60q4xZ8WKMmzDUY1FP0LC9/t90mu9Oz7huD8f
	 AU3DKlOv4UiY9oivDRzGst5vgtpfCEWwk4b/VtJn9E7E8tS7RooMCUvlRoygX/TADG
	 lHtU9xQytZrP6CWY6BZX89K2yR/FWra6iuz1ZMwirVxMqKQjiHlMZMoVjKDPAGwyEw
	 Jt10IiMw3PcM/Qd6t4bLhQzWEENgu5yk9W8ZUW7UyQJdDAyA6QT4EZ69Ql/x8NS2pc
	 FHq5wKrIhZKztb3Vn+NfX9lb04V44F6sSdciBA7RVYAEA28VUCaSNFted3XdheMxBt
	 lSMQjeq4AC42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA64EEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 21:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168893862873.1429.16634203513950777563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7de01c1c344132fdbb0d96bc451abe0631066e85e96b5d0d38c26103923f1e8a
Date: Sun, 09 Jul 2023 21:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688938628
