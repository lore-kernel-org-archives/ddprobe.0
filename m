Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CA910EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B58BC433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666830654;
	bh=DMdcjcg5Z6h34kHnkIhq/77V8EEOmsSxIuF/dWSM1c0=;
	h=To:Subject:From:Date:From;
	b=YYdmnse5Pwz/+EH8vs0FmvbytNtVn+K7rhmThOnMrrHbuUArQ0kFFKefv6noc6vFT
	 yAgYmJupoibaZMNA7nYkw3MP73+xfpoYPc41X83aXMDMgj+Ie6V607OpysM0oixZMq
	 n/VxsX6Lyl03BN34vQE6zduRsK2nELazE0QnZYu1J+Q4md27Jg8CN1RqQn9rNzep6a
	 29G9VRYg5h/VLlkqBdEENpYJNoq9ApRGjzVDiAWSvSEZsL5cByqAvpxEWGb97uh8tm
	 AOtk76cPTuY4N84ImZGZImhvT19+aPXC3wWQ12cfgboLUn143JPFWa9Bzi0ygYG7od
	 2gaXpqUt2OlGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F52C433FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683065432.1303.1436332086394297614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dc6266ab7bb23e7caae685ca48a413dde418c07ad9e3d97c33e2ceed8bc68d
Date: Thu, 27 Oct 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666830654
