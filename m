Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD24017C3
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9482FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671066687;
	bh=SpTxsQlZLu8I8YskSvmbEXMyChH0IlQy8qFUj8Bu02A=;
	h=To:Subject:From:Date:From;
	b=aSkfz6T2gSi7mytCwYp5J6ChA/OuWTxmwtgxRxsim7ugXAGZRdf9uzPSKwRnZAUbl
	 n+s6xgbAB90AhiehMkP3MsZvLI7fQVBYs7kGOpN1U1LidHGbu2vqAVK0Xukm6965FE
	 BjX8hd4yUMBXwSvAoHqCGEgCjCPz1FKpEld8m9Mxx2Vhp9grRQYTs7KMPCA+/+kP7F
	 pI4eLJIY53voSafRwV/nGf8VNVvFyM1ei2X1wYP625YK0LzL8GFzlC5IuvBXLT8NfZ
	 61jhcgvX2PQGjDe0Zr+XbQvqfMIbCZp6nSQiqkbyL/zvQw2nwLxZHG+otZGo5v5xjn
	 ryBLEjyhcK48g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE18C4167B
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167106668744.10192.10561154326294990822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10701817e5f99ba46be4b87e19d05e9cb60189cc11c878c37f9bb819ddadd9c
Date: Thu, 15 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671066687
