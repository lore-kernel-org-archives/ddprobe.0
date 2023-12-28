Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BF9C8D2
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fB1hsGDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C356C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703773096;
	bh=6Dwq/hvlPKTRmdcijwiARtaNgxmEBlJeQWAvLUz4sCM=;
	h=To:Subject:From:Date:From;
	b=fB1hsGDLGQnKrhR1EjCVQ7X5ZDyvbQcYWBYQYyCpibXmEtP7xZvq4uGEu8/ThQWLx
	 l238mpQfHJY4WlfeW6YWft8smfh9gV/UEtU5iZnwD2w17gZ7Q1ddRgwoIAsmu2Y50o
	 pGkk1UPFhN7G7lqVqcpm7LPvyhundX/0PhyCw4XbaXL4lsIgm/9RpnEbN+hUawvhqn
	 2eBPlFhCta7LGNeL11DH7EokA6PUP2pGSVQfCkM6jq/cRc6rKcuObq23K1tvBl5U/A
	 YtSa4qa2+Khx9fT1GKkZeB+O0mVOsjkjdCOCnIbWVHSo3m/40H9F8WdyOXgwZK88xb
	 mzQ/Kxeh+56EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC21C3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170377309637.9410.13070699018591983510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b495ddf7573d2945917c0cf8a133ac53a46051833fb0aa70b56c1600efe206
Date: Thu, 28 Dec 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703773096
