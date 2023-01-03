Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9388625
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CC4C433D2
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672729887;
	bh=loP6VlMJfrb3qyzEBKBjjq1wJP4Nef2bWY3fj3gdoH4=;
	h=To:Subject:From:Date:From;
	b=V0wYZoEvFBYcQlCvySv99KYWtelc3MJl83CF6CMzKwaeBMLeFhUBEXfAi15Lwf7AL
	 w8quDb16NwJ8Uw9vDvO6osCsHo5Es6R4Gj3r8FHXDC98TVYcIQYCE4x1ZgP9xXdKNX
	 zWa/vTX1paf1C5z0KxfIQr8L24Mq9q54aZ6fZ7Dfdw7KdbxMpCTDwwKHkfSNpnOQ9h
	 +Y5bhYeLLpCtr5O4355V0HAaPOkov2N8K+f1R75IV133vFK6NV+QPgDJChG+v/h9O2
	 poFj3q17GCS8qXuE+dC16EhF8sycP0VpnZEj5NZjyKNBwontw1tEl2bmYaSolL182Z
	 sCDV8dskeU91A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BB4C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272988741.12088.3831489195879251543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fe0aaeac0f2cf96f8288e44a35d184fe438da7d57f3afb439254e94c331c2f
Date: Tue, 03 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672729887
