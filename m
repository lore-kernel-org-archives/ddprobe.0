Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA56567E
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 13:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC537C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 13:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693662848;
	bh=FkWxBTB3brlJcYj+zXYxB2bxx7WyFY/fuC6lqXkKRkY=;
	h=To:Subject:From:Date:From;
	b=IZmWiVdd2EW26fx1+kub4BCZEpBDm2o8qtJ6TbXL88fxawBQe/4UdqADMN+JvRW9d
	 M0YhSpFVNcTpo8h9VYSWcZPyl3PZbn7b+qy1wo1UUeLTZcKmICxhQ8etyd+z/x8nnc
	 KPec6gzvvhm9ffnGPzcjmukaDwCHiJJvHCPaqbs2w5Il2Y6/rYNS7KVN7PbQvhqJuA
	 DYw39OwzC5weTjoqSMbxpcUTrGzlGfL/uhUG59kYwAqkSFguRZOzqG6U+Y/A/+mG9J
	 XvwudCETbHWW5HcbPzDrbiyXUITm0f+la0aXdmda4dooQ4sS6Pq01pNu9TVO2nrqKS
	 rHTYaee1TEVEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE207C83F2C
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 13:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169366284870.8470.1279148825126395010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d5548535febf8807f4f5bf962023412fb898f7e30a30d018f8383a55c441a7
Date: Sat, 02 Sep 2023 13:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693662848
