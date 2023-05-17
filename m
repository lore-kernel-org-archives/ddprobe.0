Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA291844
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 03:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E540DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 03:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684295585;
	bh=FBAmqdxjgnvBMZ7GdyYG+EmAcPtxY471bqpRtRYUe74=;
	h=To:Subject:From:Date:From;
	b=NIhtW38FNzhH3qBlB4EHSWVmO+RqvptPc6EtqgUb4PclCQUw5JMBTZUizaWhsi3kp
	 sIjHrwI+Ejk7glUZ6VVMQ8LxIDgNGjbNMekpuNB053CxAxvWDy1YODbogCUKu2vwRc
	 pJfiNXS7PKHVnnF56fVwS9l6d10yM3RbkqNcMTRM+40LOE3NB+F6bY3umKeXczncVg
	 Sim+9B8BlVJglE5WydNRoHTcD9WkGQ9F5ydHzI0lslZwhWncShY4UAHVTsFWrJfu+E
	 c8w7Wyo6enOXMGHdlDgHoYd2+p+X4KdB7WF1Z6J3GA1+YmKFdzWncaG3zKS79sgEJF
	 UrlUouHYYPcGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC20AC77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 03:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168429558582.24709.7407889128205733625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b6b500d7827001ae9c4870369f532d70f99d9c3e1516912bf0a8ef4f2810053
Date: Wed, 17 May 2023 03:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684295585
