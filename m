Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B23B848A
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59EBC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687250528;
	bh=t6lm4fPApNipD+N7umwefoE/OFACmR5wBeigHExGigQ=;
	h=To:Subject:From:Date:From;
	b=u6YzDaFNDOnBImjd3sOkIA4pE2MMUgXJe6q2/8qxPbnWO0LRVKIon0bHXjWKqGAFB
	 Z3v1wyl/QzkXvGBt7Hn5HArzKBHqRDnalFvAif4vY6765oPtM0THOAifZODUOWBcbY
	 VLY460jHd+nfXqZpCjbMVYNGRD9Cidlks+7RXRruKJ89HsFJyeooTHVbMToVN7M1MD
	 /8zPizkP/p6CNYnjS/jpElMQyTJLN/42yYDPsJ713EJjZnuGYY7Wdgi/CauJAbrzKL
	 JO2oUtQfkY+FMxzws+cIjKOVSjtmbodxNtlhS0Ui/pcCXuEXCJ4wTqqOQPjSOQgGLZ
	 +ba2/5c9ggrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FB8EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 08:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168725052868.28824.2698548863703047256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d203e06eea581d7bfa9e3b84ccd69edccaa4a09ca51b89c6ff3bbb77722631
Date: Tue, 20 Jun 2023 08:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687250528
