Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C96C3FE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 13:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8B1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 13:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676986745;
	bh=LwU2AOXR5KELGIdY82rPWU/+u+jT2mpDBa+SQrZTLYQ=;
	h=To:Subject:From:Date:From;
	b=F42RiU4gs/Z7XJzef9i35MxLDfx8msjQu+iW4BhzondHe9989cSrqrdd6NJoJIdiZ
	 XBjPti4vepBGrIvJXmlh3SDt04RHRfndKmCvv87Ub5D1vrMnoDgAdTzY64Q9uRu9GC
	 lpUibRDQV4gjAVijkk8f4y7/Z6LKSlCZrGSd9YQkFfqay9mT8PYukRBHx8e49K6Env
	 6vcmtj4168NvS1x4AzfjksQxiMicGeCOvHqAfBxWN5zlF2UeI2LVQ4qUQUE4MPt6L3
	 5Qcq4bRhJz0IxiEWP71aYT+gbZF0so8rDhC/6VrS1r7N+8JYdmnX8rbMInDOeTmC3m
	 K4ZGfBwGtMIfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD5BC61DA3
	for <ddprobe@lists.linux.dev>; Tue, 21 Feb 2023 13:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167698674576.14469.9426973498254948402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31760c005319c7cf67dbeaf88d47069e7c37ad22543f5cc596cb98161807fd03
Date: Tue, 21 Feb 2023 13:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676986745
