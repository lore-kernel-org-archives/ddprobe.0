Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C613A64C
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 776EDC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665034253;
	bh=AmsKGaQNtr09Ea7j96n5tmLMRDCHiUwVR5833bze9YI=;
	h=To:Subject:From:Date:From;
	b=AzlqmH5n+/BJXTbswJASGXhsC1TQ0Rwk1jRVCaAuvXMdjji8iw2vDkdQGKUDrAR+e
	 LExwIr1ZYG/Z6ef+7FouyQTYnzsS/3kjiyaTaZgVY/SKcEB5snZsZkAzDFAT6gkqQo
	 hEVmtna6h33DUvyFvRMj+NkWumvjZILyFku/sWsMuErFkARQEoqXGQ3Bi2MzHKDiF2
	 B/7DF3m+9UwSw972CAFpH8AqaRLrVcAH243rXifR8srqE2ZdhvvW9AuCvQsy2KOIsc
	 v62R0ZJrDrQ/fv1y7xu5ntL9hKxGEle2aWh2qXD9YrcX+Gg9F8yfbZxSSt4IGLrcHA
	 +xvGBEHe2C0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C68BC433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166503425336.12720.9159414877492980436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a135e267ca97f40bc2d7027d130c9ba124c9d271396187d41024748a07ec3d1f
Date: Thu, 06 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665034253
