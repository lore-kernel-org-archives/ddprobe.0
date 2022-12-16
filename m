Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CE9366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96A68C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671160287;
	bh=awunBIZS+EJpsEQnyZllOEctlkFuaDzHEuR06+GiCEY=;
	h=To:Subject:From:Date:From;
	b=ILcCPzwF5d+XwN3Rlvumpow+ACLRMzg26wgrKgO0FvEW0lNyZDgsR21q3iKbgL3zt
	 pTc6ZtWIZEZ6y7kZLDF5OPuK6w/F7SRQGEMdXU0R+7KdUsYJGd/PU4+OTEFLhc3hgV
	 dYmq+/QKkNEDDL2AxiHYmRy/YmxzUbLc8WCS6YYzyijlIT5dIFvBcphyBRzEepFXYF
	 KDRFCMlPx1rag+aKSQWKUeqOlxsjgfpkvwST7CMYQZ6HDoh8jGhxoIPuGSFOn2lQeG
	 2VYA6Q1eXYdsu4v2tdTK8gzvUvdOjYrIY/vibgvVzc2tZWR5vvHerHy3k10Y8q4e3V
	 UeXr1PCJ8+HxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A9F7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116028740.1496.11412548216771286908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e683a408d75f0205f5701905c7e9042fddace961954f578cd68af28f5b7d1cea
Date: Fri, 16 Dec 2022 03:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671160287
