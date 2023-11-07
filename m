Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E6E2A8C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQh8UWgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88094C433C8
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699395496;
	bh=uXGFmMCNk/E8uFbsgU65OL9TGXe2U3w//h8QmsGn/WM=;
	h=To:Subject:From:Date:From;
	b=NQh8UWgDFFWZsBgGNpiHyiQnNyjiIwt4pA9IJHZqVtTm4yeVLYeH2aPVSZ/Gq12s/
	 u/8lmGxnkSvKcRLZl8yXI6fCknexYRQOgR0A+f6qMnme5abYXIcVy0U8t8E9n7OfXT
	 FRh8L2A0bM8EmY83GMB8aF7fWncfvSCwDL6Xg4j8kZQK+WbSAuhQmWw4HnSEdMpE2M
	 VJav55EmmL6aUuL2zvUD6p0vIiLhd8AMa59hM1CHmiyPWvv+T4TY0AzvkOmv5snObp
	 xRlMvBJdmz9C3QYMQo1mvxgRCxQGmP9PV74h+iAHfFTIpDH4fZkuOe02A4Yla2xXYE
	 VdVZgI5LlJf8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68099C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169939549641.9721.16000215259185842133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb47ffe5b96e2367ee241ece5809bf92c21c785506d07c380c826a055c883108
Date: Tue, 07 Nov 2023 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699395496
