Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0482627
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 696D6C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669689654;
	bh=qP6zhVpg4eDP5S2mZN4dzdnU85uEBSiWjOIGxHESuL8=;
	h=To:Subject:From:Date:From;
	b=b1+egiKzg0GKvZkWDfMX2yonQGGbY2wewTsoqZkgvMnM5MDdurSEUlptb8N1CHGw2
	 tISWmSVou/XJLFOtf2jXfv+CImnMhsfiq8gIOMPnHGmyZitTo4TPzTwrcIItJ3Licu
	 Bvotd7wwuSUpK9oi55ZfilEi4TgT3MNQ18U4rkImB9a/UJqq0OCGDfv2xmEMXRuo00
	 XR1mHrcnMBpd/axCo1drbmLHDRrYTqLcKtUmaeR5kD0XSlCspZ5KC8EIKcDH6swHkl
	 0gFi5waodJLM5zKAbc7DLKeyWxNVIFhSjgVqV7tTqADH7kljYAFYx05yAvj7XiSXCh
	 VfRBMOViwad/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F0F8C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166968965431.4286.9237401728832725306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996e3d3f72c5ad03ac5cc033e51ccb4a6f320f75d2fe3431ed19b594873922cd
Date: Tue, 29 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669689654
