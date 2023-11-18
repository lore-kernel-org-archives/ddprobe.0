Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFCFEC8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIFllDw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EAC7C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700271496;
	bh=q7pyVLCkfKp71V4hof+mddngMAvXHnv7JQBPVirsaGg=;
	h=To:Subject:From:Date:From;
	b=aIFllDw72yH6wEZgeG2UOIiUVAEOlYv4Z5g61JM1d4r+JSV8xOsvPVZxg6eMYU5yG
	 7OF2UkyMYDjwZg1UquFTuJo1a+tDJ1k8ey/9Ix4qi2SCUTbNtylKyL54KAHYsPe80N
	 zyzVc3h5hzqa5lNPpFhpR//rO+jiCVDsEslf1yoWC8OkO+UDr7mjRfoh00G75ry8l5
	 TZeveTyoEoxjRU3hjK00dKIwA7oGliTj6GLwk82Ukztw2dKxVD2Q2/aclI464GOIzX
	 wggRPTpPK1bsdNWmEeTxTSGXAZzEP8nu+zWFLwf2lx+e/kuSJnyNz3VKJtbw5EfuRz
	 K5wPBKwDHDwrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 712F1C072A2
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170027149638.514.10316107690987955081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2995767d07fd1f407f5bdaedd0f620bfce671a9861f7acf8d0cfaf43868552db
Date: Sat, 18 Nov 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700271496
