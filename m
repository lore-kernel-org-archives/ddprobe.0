Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D4A6ADF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718B4C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670514654;
	bh=eIepwr/vx+Nk33EP+stBvTUmRSBxSnMuKi16EgEc5c8=;
	h=To:Subject:From:Date:From;
	b=BawCMhqStUeMS0biRXzHPn51TSLLmeHqgYUDE9Kko8a8H3ajGP8SXJi3JyJ+bfAIy
	 e5LsBA8G6ROiw6b+q3HcPsDd4joPx4V19EkNKLktZIpZVFC8obBi+qAQbMQoIU97HL
	 gA102MH1SsAMJ+O1VuAV9kF+1w9ee5qdMKCHzDT5P5xLJfM9hhCxAM2IP7PH5+0GCa
	 fGOBsk8dVOAySBxHqjvXXnM4xdV+otW3DNsg9EqowD4VhDdIorKS8gjmLh+wypSEcy
	 w9ark9O6ebvUe3SoTxTD4u8htNB/2Pt+ArwW6Kjjaq8y09PvhtPX+E/dCJI4EFbXcg
	 lFZ5k8Bl+m1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A2DDC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051465435.8786.12212309584893120042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45df9bb6bab26c2fee60be69d55c56acd6f6263318795fc8eac63b0d0562a36
Date: Thu, 08 Dec 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670514654
