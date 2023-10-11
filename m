Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C45435507
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 01:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKseoVCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51D7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696989428;
	bh=OZT/bwfZYVAywYJ4DERFhZ9dv4sSn0x4BMWNmkGUcAY=;
	h=To:Subject:From:Date:From;
	b=qKseoVCokXudDSNb5tPMDFfry/+Vf6USzzPOqaEViWraN8MhFItXMRnghy+o3C4dh
	 yFwUXY/kmobIg+dX1gwDdoXsXWZC2FGFxKwV+9OiEzmFVWHi0JuCLt44T5wzddCjEj
	 joe8kovuXTPQPFDXaQF0d+gAEBR+3Q5HgMtqHGWSKwJ4gU9wTBowDn04j+yFbWAojW
	 wen98c4kCTIDfHFchBdL9E8ZH8DxTzQXyeOVhMC40iS2gdMAo3sHTGwIze7ftmZTL0
	 dimmhVdgTn7+1xFUgV1l6BsSp25CqMYJiSDx0msS+Cu+/sFbzhvdPhdkaEbKFLaHV8
	 TYhBnnVzUdEdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13EACD98E0
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169698942871.11178.7978160825493040620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f3561f80c5fb88df6ba75738e2c9438082e2da0c2e8ff82825dc1a283bbf2c
Date: Wed, 11 Oct 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696989428
