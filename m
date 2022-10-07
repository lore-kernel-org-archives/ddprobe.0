Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CABFD4A35
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E7CC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665163853;
	bh=2jeC39z+RkkGDpYvZS6AVusVFAcssN60x7CPOF9MUpQ=;
	h=To:Subject:From:Date:From;
	b=rhdtvYlfnB6k8AQmPm0pvYucAxlMpdd1l8HJAmVAVGhxJ2NodeTnJsb0vgdXGaGe+
	 nqpy3Sgt/0PvZG6hxvZVPKJ9KwQywmAph75KEkFfTaQYgG1OEXHEfmChbGiuLKWdKx
	 qAT0Xt3ZGJ660I6VP0peEPGfNay9d39++6h/vjJqOy2LXKeibXWIbQeyeZ3Kdlfk6j
	 p5chlJuW5zFQIe2pLeMmTY6ubGUccj4g6xnNII8P4tG8RfcOg605GcAxJlX8eDSfXs
	 FiS0HtZG2N8M7GxWFK+dola4xn/QquMpoS94c+w2tFrPr63wQAnEls9EzRMKfq82z2
	 BdKQnXxF7OAWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D769C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166516385337.24785.5179234167108845770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d34c1ff304bcf35c471329acac5ea832edcef5e2413df86e24c2e5b208ac1c
Date: Fri, 07 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665163853
