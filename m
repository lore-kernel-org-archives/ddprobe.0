Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F4410EA
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 23:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA98BC433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691278388;
	bh=JpuLTfzJcb3rEtJM/FPYRJH86SqbKgm1TROBJjW1AM4=;
	h=To:Subject:From:Date:From;
	b=D78KNWwNQVCNS4lkZc94rBBFki+R2FuAGrUxQ//HgGKXo0IyBmeJjC/ZvSPl6RTPN
	 dD15CeyPI7d5EKhzh786a53CSSjuvUIDLlpWxo3r+oX4dHIbUaY0+2ROqYX6J4jmF1
	 cGrP6ieLPc3XpcrnDpQEu6rg1Of+bbCK7vs2ikTbOrb/46C/MKOpK/ng4xkdwqO5bt
	 w4pFQ3BHzdDMpa9o/iEfer2uCQnq/qhNJeDENIhAPE6zJt/bZAfmRZJXiC+Qdzn65M
	 dGrZJvoKM/MPPHXah2gw3YfVxZObc/hY0dmR4h3bAu8MZCnFGBHhQi7k+x2cN2oPu7
	 /KccmMYHJfnxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA260C001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169127838868.603.12561218013915722150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b43c650e110eed70d4292fab710ee177bf8c4b7359ddb7fe7ccfef2c7e4b39
Date: Sat, 05 Aug 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691278388
