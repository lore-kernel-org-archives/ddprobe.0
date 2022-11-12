Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA654653
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EDC6C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668263454;
	bh=d5nQqzGfgJGNyVeTzu+cWFhnuxiXuaIhTZ7qw8S6QOk=;
	h=To:Subject:From:Date:From;
	b=sBX01IwUs97rRKDw/eUQwUbk/f1S4n6A+ATIf7M6bkufFi9Fcz90DE5kveaffmdCb
	 9yLL7JfdKu617EY+JsIxdxe8xVsrBD6WJDGHL9X4hnPDFWkSiLVpQwzQIjbn/0ZeVV
	 nlDolbFNYbpjZa8ZAUdJrd74XuEY/XnFSlhzPSl/mkG5Jsq3Efb1qGmpSsd6UkKUQD
	 sPS2Nek5RvgIzroqd/QqZm2LeF6TcoLv9tSu2Xvc1oY7Afp0MVadiEs2BhyZJnyK9K
	 vsbHhSJttHpDnQIyBa8hFtS+wEZPSg1m7obQBzeLEwshTupsW3cm8Ogw5Br2ZyyL5i
	 KFeo45J9GwxDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B3CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826345433.2887.13177183136608259614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a58cc48eea9dbcd1f132066da18e8f05397a2507bfa07e965bcfa561424218
Date: Sat, 12 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668263454
