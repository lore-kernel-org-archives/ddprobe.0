Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1061FDE
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B15C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672466487;
	bh=2scfhxPkq3wlW6SAf4ypsF1iYBLEik6bL4JDxCvJBtI=;
	h=To:Subject:From:Date:From;
	b=MVdD7sf24w5uymZotl+VNHbZ142tInfQStBaZANJF4AyaOwmQeYtDpyfKBrKvpRRG
	 gH91ooCZDIyp9vd3fWBOxM2dlGKLkxdshUse0smd+ANj7+dkBQYAETsdtqMFlsNOxY
	 C5fhAOwkBBsROtnbeluRHZqIFzos/Jv0Ba2VOsiivz6uqa+/9lCF5xXoEQnpphoq9f
	 XaipZdm5wgVGAXTq2AWTrRS9uaZhc2+S5QPeISphUtZOnm8uCC8hen++WbB6dRWGkm
	 PMRhDX9ubMenmH7/1NSrdlARV1vR3CNDGJp2cWY9SLcxGajLfeJDiQPQadXO8MkQAK
	 e1iuYuPbt9Ibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CEEC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246648739.18949.12933980433494706938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52daf1e110c297e10941b0f7fa6cf96c4007c9646f8e4da4d551ad6523695116
Date: Sat, 31 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672466487
