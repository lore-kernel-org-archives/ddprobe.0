Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A007E
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F5D7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669014654;
	bh=5aDkTghM2gPC662ftlyUPZSZi9Bep9uHAIsw/BsP1Ps=;
	h=To:Subject:From:Date:From;
	b=gOW/RYoJxYstPtwDm9QctaKqY1cUVaxXGQ/l4PZDA3Z4eDnQeQz02RMgFYWB7MLGk
	 vRiii0rhNE2QqJmhCn77tH5RhiuwTylQy0au92vLNycKOMHAs1PBCFr09ZgGCUoG8W
	 pRMZqq2WldUYoi7FtOQxkYfB7pJr1geTG5UcderswiHcbFx7+F8P+n214GyX5o72De
	 M7JrVEwQl+w//TJ+MqAO/6YFKxiDZ6jbXL9RKj0NYVQvFgbJF+zCBvZeNtKbw7XASL
	 cXcSL7iTGChx3LqCaYwVRTbRBxjUECv72L2Dok2ygvvk6oJP6C+mVm2k6k4TIiObod
	 J5aiXmyccUDEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CB7C433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901465433.9221.4467103422582461181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ca3a58ace703f96586991ac941d4c2c2c019c90d42e97e4c34d43d9156e520
Date: Mon, 21 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669014654
