Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463B12598
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 20:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8915C433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 20:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681071065;
	bh=3On5eOdF/0Bd4Jb/kaT8lCc9teqqrgqz/bvudeZOSM4=;
	h=To:Subject:From:Date:From;
	b=JViyJecci01VssBfxo4ysOIwXdSGwgXnEkd75iC0ctNsyB8GwD52yOd9v9hG+CKnd
	 SE+CETR2ElQwxocw//K/A8cK8NHy96bAC3ib/QrIew0qdeZudctDiJLuVi5Yxs80r6
	 h+aijjqZBx9B1D7B4oqgz4eLMbZFthcEX6raC75EQ8wY1Evx3lZTY+JrLvpH0nwz65
	 t/jEeHd56ZSfaTAE72UauHfWMc7G3a0R5GSQaYfdQXPqp+VAtPiXp9mELf4rxXPOHZ
	 jXjMW7rqZ/A5fX4yAwJK3jWFgZUPIogCzbJ0l+SwfGKW/Ofl0spfkzJVDXnxKFpIOC
	 xAxd90uZVSjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB33AC77B6E
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 20:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168107106575.13014.289353422480184191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83e03ad8b533bf696a9255aa9956ac3a9cdaa3f30cfde1a45740bf5d605460fd
Date: Sun, 09 Apr 2023 20:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681071065
