Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C850F2560
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 770D0C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664701253;
	bh=C4+uILcdx0S5uIMBEM3X+fHIvhbLHgMC8nlO2qHCZsM=;
	h=To:Subject:From:Date:From;
	b=Vy26BbN1a2tMlmkBYxoEmgkLd95kGINvGEgM5NIuV5pbETE5TlyC+dRxVFRWj5JPS
	 V4GlWsiFt7pIWHimK8hg8q1xr5kHGGao9WOrXbQ9kJbjUVogx3RrblZPs1LPCo34et
	 /BJrrs8HKm6tFW7taYS2qqPhm2LjfXW1cWvpsLOMM4UfNHTNPZRfNrELkujmBaC9Ee
	 dd1vPdFQairkTc1FgBa9IKH4n7wilbZp95VbynKP6R2tpO8Mf7ctAUOQ6NQHm02lCD
	 3/pfNrJBSxOw0wu0cXsVCd9UQK7ENAJl29rlBDLk99tK3SrIBHLCLQMeMz5ZlmP0JX
	 hy5ooEdHgQJ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FA0C433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166470125334.4837.12414292946257300116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32841eaf805c9ac16d11008ee7d3998a524a9c050087dd618280b1dcb0a1b9fb
Date: Sun, 02 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664701253
