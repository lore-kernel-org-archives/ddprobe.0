Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5490628
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C58EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673581287;
	bh=T6NuCsj9C2RER4jG4Kphg6IKlcUk4f4qzy6Q1f75xnw=;
	h=To:Subject:From:Date:From;
	b=f+faqpWy6YOMDt4zUNhDhRfQdEHuor4D4o4iYQBFEqZqXQDeIFONvZeT7w9wlN/FW
	 DqQYcXfV9k74tlRxpFJKnhQpfE48/MKxdiBWoE4GuQxR5xkL2LlGNVeKbTZR4ItXF2
	 O3ov0rM6FTM5g7QkEcDz7/CKzxTHB3zvWn5U3yTgYFbByzOhkVJwI6pd5dihQjJ7ks
	 zMuWCZMZ1yX04XUMifi+fix97bc7Azli7Gvyqth3+LlPzVkEw0wIJXe99WeMaUAaCN
	 /DLDJlps211Crn9vjPvyytfLgqO6wbMOV1hDPjkKqpTOAoDNEmA/LvuvnZu9MeMfTB
	 v+2evl7EZvvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FB90C5479D
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167358128744.17517.2415178716784123146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3d15af27db0d8cc03c9abad69bff883920b7aefcbcd5bd6b159a5038fd654e
Date: Fri, 13 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673581287
