Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870E2A53
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 19:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D577BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 19:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693078448;
	bh=SyZVVpBTu5Qt9iZNWjJAWW8Hiw1bIknRS2b6yoGfLyo=;
	h=To:Subject:From:Date:From;
	b=PC2G37oGGE7qnAIzNaEdxZoDnbjnB7gWOQiCDsz9BAe1msiUFvisHSxYiFubMKHiC
	 BjWRCz2Y+HnOGFde2wetObpvHCRAz/Ggcb7gFKDWtcsfnxDVmu3yIg7DdJPEaLX7JN
	 lreTNAJAHT3bEsISUmxvyrp+YOiz4V0oKyEBCBkNkMc2/yEy2V7L1zim9gJog7S1kR
	 EVt9ylD5Nxc6opf95mqEYnLQH4/OuY4TbxykcN6PK6pog078A7nK2rp7IvZ8wWiDGv
	 VsLJnV/xBVh0iV/hQjDGq2raDYAHOI3/A6dLb1gKjqOGfQ+Q4qzU7lhsHKXLUkuD7b
	 wM1vg99/GEDdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD840C83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 19:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169307844866.22657.12823453967242878780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 418107582ada6353350c9a242da86d66963eb889758d3bba5781846d033f2fae
Date: Sat, 26 Aug 2023 19:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693078448
