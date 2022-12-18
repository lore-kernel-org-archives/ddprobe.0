Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73EB10E3
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DBDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671369687;
	bh=7yJioV1bdw9rYrpywMMChd34wB2M/AJAmjQHY4h5PrQ=;
	h=To:Subject:From:Date:From;
	b=cYDE7vnMA3jxTTpGQ8u8T4fYvBEBG42XshwoIS4YPGG2WGNwrs4LV+57a9CFjzIzf
	 sy37DT5ApezaevixAD/absg/EKAFqepwdKMYUnWVqpJZiuo1vxiMyW858ZWpe0xXQo
	 Ve7lvR/lwDs+0GXxWN2hzkVO76HiM4DXcNugVZcY/EPme+IHeGY+q0rQA3lB/WrU6C
	 u8zzZbvdJ7zfq0g2Cix36bkG2qKQBEmm1xtcs5ZaRZZjq1sYqsExAIC0xEWtO5ikGJ
	 UQQXGx0eU9yPBHQz9xs3rqlAThF2BfA/pCC7SWcB07zh1SE5RcSR0Otm12nzBITPw0
	 YEIdcHRLMRx7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665BAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136968739.16747.6538936323228685038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219191b4fad0e4539814bd0abf46a878a44bbbe93bce7c39034d219048cb5998
Date: Sun, 18 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671369687
