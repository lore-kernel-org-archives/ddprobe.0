Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689A36AB8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 06:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D318AC433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 06:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689314468;
	bh=UfeeU0bHx7WZ86eLkqCV9LZoStHoz9EvXYoye09xm0k=;
	h=To:Subject:From:Date:From;
	b=DUa3mQ8paQxa4ukDJt7U50wa2Of0cW6RMyfzngtFv/JRDbcyqIo4a7aDlqxydJU/V
	 FG93Te3RilD9vxW48C1RlWE9bvhDrP/hROiZ2OyANC/BATyOO3AtU2KCtc6wML/Ju/
	 YME+gsvWCB3RmYZOl0Pe2kWneqtrDYAfbAr5KN1l7eMyanngnr3rT7bfy+xxu+sZ2x
	 dzJNa7rOV019+jFpVbb9/EdvxjpELhF3GVs5bDsABQq2Y6MIJb0P0yJ4kj37ehfe1M
	 XoXwZbwwTGB6sslFtb1gruWKWWl/cTmR4/iptx45Wz9JMMGs6IOGcLZ7CvcQNBDph1
	 fpuweRJ3rrwHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6FDEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 06:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168931446870.31812.2314652449827275963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765744821aa00347f33218252510093c94f2810d02dd337f83f8ef39441c43c5
Date: Fri, 14 Jul 2023 06:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689314468
