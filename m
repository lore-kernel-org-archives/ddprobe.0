Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C0B3C05
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC40C433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663935053;
	bh=zreNnMNapTdJ8y/2tpCDXanUkKObXMW7ZPkH8xMBMz4=;
	h=To:Subject:From:Date:From;
	b=jhM3A8ZRFC0X4IV5mSXSCnQqP5idl//gFRcif2joBJagTMPEU0Rbk7B17ZPEKxPlV
	 /FqpRS6A5VUg7LRVGAVQiMSJvUgzABWaQUhBunyML3KqP+0DAY3MLF82ssSzRGF6Yc
	 dT4d8BpmcP7dMsYT+1mIJcys66XqJNnwq5zFh8TjL4/0MjRVNjzZEQOTYmrjbIOg/o
	 liDPSnJYOpRYD7rnJ5vuQ96ngS7R7Li9tapY8S5/C3Hp92KdqWWhw4kjI7Xy+JoydE
	 otJiV+quKaVyDiI2TDx/2lLJp4PmNb5WOiI9YrOw0Y6otkkry+zwxT5svFQt+Ydxul
	 hlmCJlN3LJlww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53196ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393505333.30505.16616918426736966291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2791ad3ce6c6171ec14d28fd4167b836f539c5f6a5e2f9e89508d798c97e2753
Date: Fri, 23 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663935053
