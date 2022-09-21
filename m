Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB9233D4
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7353EC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663767653;
	bh=0XJyBPcG1V8c232ZL/nA07cnYmMf98rDnXihju+VWUs=;
	h=To:Subject:From:Date:From;
	b=hoF2nWdjWRj6pA4llisk5bdUVUcSHFRf1Ay2aay0Uah4TKefOHkyLtU8puNMDg1vZ
	 dXDEvlVWLcxO8dopjI5ZwAyzCzoITB+V+HRrOyCAVHjpFYAvpYaKC5IxBL+skYZ5AL
	 yK+icbuWydRypz20LZCJLXsiRNDRBGwuGxjc4X5SBu6F1VUYEeIe8Hak+vlMg4K4aw
	 7eMa/H+BW5wHAIU94RmZfavwQ//CiYPDnWKZkvLDafLi/dSQxcP/U9aKEosTk93WHU
	 MBnvZhJG7KDck+FH7SZCTEbIOGg3gHWag4n1enmMPLqyGhtQPAV8yh6T6+FSXzUS/l
	 zGSur1GnfSWRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580BEC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166376765334.29766.12064848088665299486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41a7cba6efa7e645c6cbac11154855c7319374cda457e33bc419138f2e18644
Date: Wed, 21 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663767653
