Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E395392
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 13:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E319AC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 13:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677073325;
	bh=VjuP3WdMe44Kzkf6uS/nFTFu3iJn4OvK4uy6PufaGHw=;
	h=To:Subject:From:Date:From;
	b=CTXSGwdVyr+nDkj0pAco6ccuLBKNKR9oLp2Hnti6gTRNtqAp28vBm29EscbNyqGbr
	 4/tzqZyw4/ZKEO6uv6cirIN1JjZB6BSGtX1xDU1wXAv3InZsyP0LbA13NaEPDzineM
	 VWVJVeFS5L+zKgYlMMebQ6kHsMFtpwcocLwLYBsZJ6V8lVoETydxvomMpBrjwh8p+0
	 wfKO1V1lByFTV4eR5hcw2y5s4RopWFGHMLpAf9loiwTplvUPIjlI3GjZpqYiYToBcM
	 MqKu5w7vvuNHplXyMX+NIivV71Sg40GEX44UBtm/FjwbjcnRck9tLisYS8Jy6RXFcb
	 d+z65XzkoqGfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C0AC636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 13:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167707332579.29120.7567399452695251430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f5da380f419307af704750b2c396ad691917731cd2f39fc28b02ab0014d5ed
Date: Wed, 22 Feb 2023 13:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677073325
