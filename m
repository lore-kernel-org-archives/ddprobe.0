Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85677B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1A9C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666903254;
	bh=Bb11uCA3k+TN0rT+yze/BoaDwk4UBVdUwLRMtaSmjcA=;
	h=To:Subject:From:Date:From;
	b=Otr8JFn4aRlgT+s1fmXADTbmZOBpNwWSvf2/xyRFr0fhQqdoX5Y3lXBBwVahb9Yc1
	 GcXoH4xvYFzKx88Nyv8QDdXmE+f6DHe0KDA1uIeJKUFqTCTE/CVPq8Gp7xpSf4YEaV
	 k3T6g+CF+jxpL0Xce5VPp2m9SX924ei63iTbGR8JckfL6I/v7vuIEWUTAuWcAQNW7F
	 Sjy8zo0BvWiOpxr8oi003vGjXkMMX7JupXDfUc2VZUakfftdyca09hz6SOOx47+PZc
	 0eVBz9f3BnHNZwcypvaJ9WQRW/OLMtJ5ApPFc3kDVps7CjRcldmzKDdQKesDjXaSaz
	 lhdGep/leFcPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC97ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690325436.11795.1509959644067279810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be136d136dc0a562428ac72e54d1ef18f312226a6b5f6529f592323dc79ddd30
Date: Thu, 27 Oct 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666903254
