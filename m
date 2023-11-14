Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C57179
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkW3oyPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99FEFC433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699920496;
	bh=xFXW7kRgILAxMFJMebs5UWEyijes3gfEVPoYrZtjP+Y=;
	h=To:Subject:From:Date:From;
	b=hkW3oyPptxbehWI/zbG/JRCj74J2RLfkWQUEB8FRmcQvh52VPgt+4k8tokgf3LVCQ
	 6U+7F66YHzqZICZFKUcAT63zU3MjpMUTRvHb/3N6kQcJMQHWsFNfpq3cV/4b1Y5Qh5
	 aXtcvjkB39A1wiGyCuXhHNR2Q4UYMALwcgob5+gG/o3DbhpmTW4VN7upWkGvx2yaWA
	 XgOWWOh96n3iqwdcdtAf4a0+rWieOxfWGDOITAP+Tg1qJvcplFh8IFZxBHQ1+O9I+o
	 p9ESl1qj2MnWYwOn40zaEzLHnD/bh9VQuIty/jLrUWLe6YZmdzQMsJ7aUelZDhiFAU
	 D/xs+/NH/Dyhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 784EDC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169992049646.31435.4437695072252000593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f8d7dd2669303f33ef98767cf6503ba0d08d5aa3c6b196b72bc68aec22abfe
Date: Tue, 14 Nov 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699920496
