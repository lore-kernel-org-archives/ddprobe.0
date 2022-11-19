Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD318364
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2F4C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668840054;
	bh=rndYtQCJHy7PZ27NheXRIB1d3Glguk1CeheIQArNNRU=;
	h=To:Subject:From:Date:From;
	b=mEAJERKGHcpX/FccwsVzMlSMCq6ZNrKzY13LNrQ7CPgB9s8z/zeCTewLLL3JdZ6JH
	 ydVYazdkMP72U16i2N+/E0HSwPsXzbj9DOrhT+r4ja0HjesVeijQKjdIpdQqc8ApEt
	 hIvnf4JHEgq+AS1x1xCnf4ZRy/PORqszvLHIWBhTnwj6VX851/lyLeAmmwmUfHp9g8
	 Q7kzm9Mhe35KXGjnHr2LlZQwnReo+Q9euBZche0fKZQeklbUzbVdoEFUuwYemXBmdT
	 sBcpy7JGlmsfch8sgKIGGmCm/2M2eahHRx88oJHZPX+bmjQwKxVZ8ajV0g/FvzLUBN
	 CdgKIB/B7fdkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 512D3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166884005432.28274.5424105214626803579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10cd419c227eddd2db843d5f188a1aa0cfe7fa1f2d5171bcb3ab02b6445e88ed
Date: Sat, 19 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668840054
