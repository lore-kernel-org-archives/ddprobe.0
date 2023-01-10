Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9662908
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CD69C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673385087;
	bh=RJ1eCIF0tq202TAJNsvQYE/5z6l0vZrYHbmH/qR4PlM=;
	h=To:Subject:From:Date:From;
	b=nq173dtjXpfGQ+kywe9h5IcDxgdUELqfXEVs/V/AmCilA9YHypVMEUR/x4sKDhUWv
	 yTiU1Yj0Ru8obOot+mfP6GzN3aQfCbLI7pZ6+Xa/ncVdM/sxfAuQUMIuveF07luGrw
	 kppimj7RrQ+2K778Qr3qvesgdGbG23c33tpgBHOvIRbiekhDYxyHVkO6tsa0c8ICni
	 PzYxqp7EbvRHUSg94mr7MAFmFHUxXFhNTkaOV0v+Q2gSwjuCqPpD1qymiGa/1yPiBd
	 XetCXgBjOSBkGU/mQ60Hdjs5DCesNtllRJFZF/vZ/VNZSHqyPIVEWb0+2lrtlu+xlR
	 VrQiSweDcYxrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F3B4C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338508744.24611.17877500689805244815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2325cb44fb2bc7f247f6f7af55f88e54aa5a5aaef99487be90f5de561e30f583
Date: Tue, 10 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673385087
