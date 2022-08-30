Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAF236A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 03:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C874C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 03:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661830852;
	bh=3kmkpYbmgpz2EulaTZFXAYWl/E4waxcaCpt+mQJGTCY=;
	h=To:Subject:From:Date:From;
	b=bJmAl8f4aa85hl/TwhIpWjP2Xt9oHhh88RMTxhyE3YJ6M41nMYsi3XR8kkNTIGqhv
	 E2shBLaDaJU0PYbrkMYM+fvjdYUpadZ/AMdWuiEEXBpGHE9CkCXT2c6K9nUWyJ2M/5
	 m5uD8lc7D/s9zQfBcjcK21K+3sGCmscBzMdFZbmJUhtdfOXFZaiAmxlIY5IxCRtR5X
	 NLewrvnqykfCyUVX9nkHeRQHKoFtFmQk7BXRUYy0+f21xX0IMponSWAARPYVdBCyev
	 Z3H9ypeIwKgiZm4t+gQhqcgwsHnjrqJU+SyOjlJ48uLNdouU0KJkEdyMAdM1nuRkVR
	 CH7RJjPyZmvxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5723CECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 03:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183085234.3016.5456975498754674564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3956173b08637d09f8c24150ab20ec9e4a6b03f3eca6d50809138db39497462d
Date: Tue, 30 Aug 2022 03:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661830852
