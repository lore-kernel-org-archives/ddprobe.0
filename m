Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCA3139E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93D05C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673154087;
	bh=H/PSc3Wt00sq5xZCpQO9K1GXmaCn3r1+smRMc+QcCYo=;
	h=To:Subject:From:Date:From;
	b=T4ywW4PTVPwyw8TGJBb76xRnWFIWjJHfEFSDpqBt/hmozXtb37iodjKdLdkqH2YUZ
	 zjwu75M5qJ6xoMsOo+DM3+NUlRdILqg171NKAtoZk0sX/L4EJ0kunDH6BpZJuYNZ9Y
	 MSHGDMzD7a2178tl4mMYyl77kWm+1GluXewPmoNjX0zI+oWLOD8eXqd2s/VfcopJv2
	 fWjh54qq89Eo0fMn6gs/lW+IE6pMjVX312Mlss7qapiiRrSqXZ73h78BRBYB3VOU/Z
	 fcZVLvuWQguLME4Pn0Hokda5+g3CTui8qWnFrErZhUTj19cEyfFDzXz6bL1VrE+eDM
	 iIPGVQWZ9HqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74128C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167315408742.27481.6662682461326471903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f247db18852aee60fcbf654ee1275b3b8325756e90716fc14f8ea95ea7f607
Date: Sun, 08 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673154087
