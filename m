Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA83F7B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A0A9C433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666680653;
	bh=UL2+LA0LF6K7MTmTSPHZuWGq7ASGOF5Qwver0POYBE4=;
	h=To:Subject:From:Date:From;
	b=tbngTha3APlvI3nPkcz9n6D+QtRMlp6ff6cjdXqqbt7fHk/5G6/rT5t3bqCM8viIO
	 E/tn/AvA0WxrUOcUeznIOtMB5tGjTTj5Ye4MdZBHYMzatxzeX0mMYafMD1+BTy+tpz
	 V0tYKZw5n6bJgkBUqqgH5ILyUFo3GYJapbm+JFEPwZabJ3BeXgL92g8i0scrGrF1Up
	 kFsDb740QJa3cAFVXYVNWTsmju4Vq8dj4hfgudUkK3CyD3pG8nQxLh47K9SY23ke2z
	 QXzZyjQSKIW/eyY7dmM2GlFWiDR9414cMUdo9dJgRQ/esh5Eo1vRnZLNRNFq8rYtoE
	 wFxS55fAa9wvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5102CC04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668065332.28404.2755401943890516415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bfd95968e4c859be5b18d83157cff953c31ea738a4976f962e275fc62339ae8
Date: Tue, 25 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666680653
