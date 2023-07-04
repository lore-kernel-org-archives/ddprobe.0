Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3E963C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 15:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABB3C433C8
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 15:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688486168;
	bh=Ijag3B8KDR+0vnYJb75hCJBBhsUe44+8bRBIolbbwn0=;
	h=To:Subject:From:Date:From;
	b=QKeZA57g1A26Ryf3rwsOT6p8LkgjmgI0KE/lILsoHXdgAuglWixys8WHHVXTXPaAT
	 0dWe8VViCzY3JOriz1CIPMopzzfN4w8dydjkCrfNExNx44cLMZit5HdNQba6od7Z/J
	 gRU20h9lvAejh6B+hKR1O0VhMGz98QMqYskoUPsONHwHIyvELxw31x0OJge8i78Hr6
	 NUBSmC63cEzu8ogE94MPg45pvPPBWsn18ZdseSY4Ld8yr0KYWPujGJ6NmDqMEaBvv2
	 DDQmXi1U/fAwK1jY5XlzOdbIbfcCtwh62zYdvOKGKl69evb4/9vV5AgR/v4gVauImw
	 H5uGcg9ITBeSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD570EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 15:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168848616875.20611.11075728321767657609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15cb638cd5fd384a871b746c70e7685553aca4b77b6e37cfa0fc2793b940602b
Date: Tue, 04 Jul 2023 15:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688486168
