Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3498B33FD
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 12:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20E1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 12:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681303325;
	bh=QOTF7tAfw4zQJ8OMdNCzhc91KnqggDpO5uMBto8OeqU=;
	h=To:Subject:From:Date:From;
	b=B5STo+rbhv+YS0fDx5M+y4iNPwerjBqDMMQFq9nD/rV2CmArNHVezOV2CudXL5MkM
	 PGhkhGbW64rrZTWuaVv/Ho+Rphh8r4b+d6PUc4yVcDZs0ZyQbZluqcrIqivvDyR/J3
	 7j2wwXiSOD095WtUvxciCRN809VYiCAf7W7hlUtnMxIa+GqJaGClC4L0ieV4KlHwN7
	 pjhgXsRDpfcOUmPqQhi1wbln6blSy7XqbtsYNjwftavfCALbWQNLaoJ5aSWS4p20xJ
	 WoUIYwTJwZNl215bObJ4vdAxkuE0TzrFwR8CR1ypesv/URmwCwDOs2GMJXrY8QIsTK
	 NCiiQGJL4lUPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1277C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 12:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168130332578.23015.8265413150788822148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcc2462b9fa6ccec3cc2afdc11f9caad4a914ab9ce2adc751c9347cacff37f8
Date: Wed, 12 Apr 2023 12:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681303325
