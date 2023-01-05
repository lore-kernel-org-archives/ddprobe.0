Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30FAEB03
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 795E7C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672938687;
	bh=86Fz2yPg3hfNzN7lkiUQaU8xk1HFeUbO3+8g6Brr46M=;
	h=To:Subject:From:Date:From;
	b=OqeDkOYc1NWQXQbrZ2bER7KxMNweGBD8moyUPgqeR5VQnrOEWlGMduHBMl8Uw+Q5p
	 WZ+heXF2SR4FEB7mt7em663rjTsryb6b5zktgpwBIAJpNxWWhiUR2qFBT+M0TBRnjh
	 4c0x3mTD+8s2T9hVNe406nL53AfP1v4/HNTqLlNXfQ4jr8E4Z1Nm6Hopz1YmNBkwvW
	 +XJvZ3kkwzoO+yGOm/HfX0yPuoQiN9UzyyWBDjHMIy6CSWRMeKBtb30yHbY/k4KAKZ
	 ukJSeGxVXE46bMRhEtKavPumRzf5cosOwKOJEmBwRn2by4y/F0pTUQjV2tKdoN2fZ6
	 sopjYSffgft9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617B0C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293868739.29261.6007722352035688559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8deebbfa49e82f4c04e20e02c16ee838ace87ec42255843bcb3252d15badad0e
Date: Thu, 05 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672938687
