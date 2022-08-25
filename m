Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7BF3C14
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A90C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661449252;
	bh=bJXkhIFaMVPZvALqtqlVh7WF/CQ6mV2vW5sgYbHomyc=;
	h=To:Subject:From:Date:From;
	b=B9czbITVqhweR4c+i2FkovN2fNDFd0R7IsiQOXb60DEe6uTAef6GWSr5HyFqHy/VG
	 rWJUUg86+U7Q82MpYxRZ9+QRa7fweMhh2aEqqB+ZK8ih7ibLrYojG/SBCvyl1l1LH+
	 VLzZihUqkwHMBdRcgeBp1BoAiygVABw34TSIfBo7vIkngGo2xQuQjd8i0xTVoEnvLl
	 AkOjDscqOZfXmSvc9I/3fU1pox8qcQ0LUP1u2VQtfrkQakHHy1JHEBOEeP83IzLR6d
	 0sRHWupTbuYWRse78urcLxzbw9h2EzSvGYXGNZHwqsLvKHjygwk4WRVYhBu8mhjGQC
	 u9LbCMzXkHfoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F516ECAA24
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144925237.32432.16163629524673125693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d76ad82fabe1814b782b8010fc8253efc69fe32001ab358b321a8888ac8e42
Date: Thu, 25 Aug 2022 17:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661449252
