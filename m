Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECB1469E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdI1XUXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8386CC433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704086896;
	bh=zczBBnRUEX/tmWafEPWFPMf7x0J4ALe4IE/QXwaFDnM=;
	h=To:Subject:From:Date:From;
	b=hdI1XUXJ+QPtTZ65dn7bVmoop0d7z3/isYBdSJ6DmRQEI9G3RSh7O63ieGhxevicG
	 vIwNGQMGxwfMNrhUASo4Vu+a2tesnYPUzWy6NAbiOOZvy2nGWumrT3ZIsS6Vx/vFl6
	 h95CS0rMydh3j+8W17tH7tlwNgqpw94HBS22+Uzo1QilWvnWPl95E2yqLVPIHkgITK
	 4dl49IKvTNYLQMn2cP/MJDpQ5RkMKQN51rfgSeOaA0XqvzoevFIKZzjeXY6jDmmQ0Z
	 B7ujCDhWoxVt9APQ3jsRQFDyBsolrCcZZzHvCC4lOPeqL3Ue/LP/yhe/dBr9Pw1d86
	 kaLXnT+YWdYkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BFFC4706F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170408689641.10424.14505474648108404829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81813093fe8ee9a7b5a924162e364af1657a8d1c09d89e67c96b6bf43174aa52
Date: Mon, 01 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704086896
