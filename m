Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF70A7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 735B7C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670052654;
	bh=d5SBJyZ6ZettBog5hdoJlwuCeiHgaEWEoAqP8rBjxgM=;
	h=To:Subject:From:Date:From;
	b=tJU4lBVTyH8UD9NuWYmcTFu9FpCAFSJTXfnaLwrJROiADbsZQ4RyN41NJXsOndTDS
	 1yBUWhFM2WPRValfkDP1dca1hVXZ+E/Lc1xnMWOv+NhYDNAgYdt4YRPutULBH7Tq7n
	 Yn9sd7wS8xtc8IBH6hRbdKGN0/IuiaQwBGJTGSK4Z+vffkZLECCIRpEm/Ws8LOpt5d
	 pp0uHs9fBacbRXFW4Lr601KYVScHjtP159TxbFRJYM88R0ajEPvH7q1zCPGSqpQQ1J
	 DsNwNAfYS/HqmVFXcS6fwOGAgjDwr+NeIVuoDyqEdJAPrkreRM776aruMV2B3AG5uZ
	 hmVJsZQpklmvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D65C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005265432.29691.16769530616606475688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 253d142785b6c7e264af14ec2a8a06a69479c6527c0981c801f3dddaeb5b5b63
Date: Sat, 03 Dec 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670052654
