Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325EC15AE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 02:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1A0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 02:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674871385;
	bh=RBhoTDOQsbqR+nosgNrjRNuJCroG5xd3opywJg2wv3c=;
	h=To:Subject:From:Date:From;
	b=osK6ziue5ibciXo6xYLILFlD3km6QcHvIZxeW8MWq/w9XZWqNECU4DQk6SqPjXeRS
	 0N/cu5dCGjL1oIMu27PeZ8x3Ljc3VCJzLSzwaU0XlhUkbYffQ3ufiUZ92bUDEKglef
	 DS2iSqcFgWV/hYnpyhDlobSK1YUfOrAe2Z/gb/fUQlP/2CMOa48mpRjus2Dla8Djby
	 V7VJLkoaD2QneTMaBZ56BRjulfYgVv8p9qnxL8OLIRMMnKX/mS93h+1N+wCiViDwQ7
	 c4L9WiUygVQW1WkLEYoKvYglhgFjIX7DrNCVmeyoKZIKw2eRpijxd9e07QAakfgcVw
	 T2VKSbKLdGHpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0A4C54EAA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 02:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167487138575.11521.2013062642667613086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284104720e6d0980761a99c72bb778f63da9fcfef3fd8cf0753337bee07cf69c
Date: Sat, 28 Jan 2023 02:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674871385
