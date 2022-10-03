Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C8A17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67CD2C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664779253;
	bh=ivttpQC1GcaFTC/eJh4GG/WyRFv91zxtH+obkd3sx14=;
	h=To:Subject:From:Date:From;
	b=a4NH3F6s1dw7OlxCzsiwb72YOGkWaNWqdXmg6zuW4yF/7GymZBtW11M6G80wldpCN
	 iMF20erOY31T+ytPkML0ILwbSGhLtBaHjxaSuuqgbApz+sh+21FIaDu19IuW4yv1tL
	 J9jTpt0NsdcC9yXoVlM9hnfh38bjLFW8+IBxolc7R0OAG/q4S/rXarFsEAXPVTshLR
	 wEUwydA4eeaItKuyS0VO8Bul/i9aJMxut+kdJAfeaDBlpjPSIWVzxFOuVVrk+2TuFh
	 OhhhbNN9Z6TvOVXsfFFniBjuWHOXe9831lcddNFcr7ILBJ2JZECgM2NnZhqtAj0BDX
	 p3ngx6RNVFkMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE3CC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166477925332.1961.8264650477455941120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981222bccca873e4faa44904ab02c712002347798e5318cfe5298ec145158e06
Date: Mon, 03 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664779253
