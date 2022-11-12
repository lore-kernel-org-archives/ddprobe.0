Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A62ECD
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F538C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668256854;
	bh=VptDUOugM7FrSWgqpzRLv/ivew+sogNqj1XRV0fu/0w=;
	h=To:Subject:From:Date:From;
	b=FZaldDHUZ3+LLCOQGx5n0BnN1f9d9wM27lLpujh4yUUkhrfyX9iBgtSVa+uWfQope
	 HnrC0Usk8iDrHVS7FDgFJKpi2qQg5SIIBEs7f25U0E91SzoHzeEvPXZN1/8G+S3v3e
	 JMOAgs62avMidfZDvcmMzbnUqIDGHERbZKh4Gbcun3+yaCuqVUXbBvtkQ2mK1LvfVo
	 Zpv6nFI4QEFop1Nk/whFNxtipAGsJpVZi8+iVI4D5p6F0er9EA2sl4vi+DtWuxbCeh
	 ySRZWZ5DCQqN5GLoAuQ8lRrBaqEysf//HcExa8DiX8Amcw79J3oromRlg+tjyR2dXW
	 e1VeG6OLFqWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580B1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166825685435.11831.5079099052204311010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d61746351355812ce3fe922cea6c8f08fded08a3244f15e079c5741befaa876
Date: Sat, 12 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668256854
