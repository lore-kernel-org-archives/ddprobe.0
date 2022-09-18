Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CC01375
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BEE3C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663513853;
	bh=3XN2UW4pGTXRx7gA7uumGa3T66+dZt5BaHIv/fS8Xu4=;
	h=To:Subject:From:Date:From;
	b=EoEwaDCla9KV7uFWRy+6MQBZTGmTC6CYAVS0c2FYYCxT2XJJcbub/TfMPutKqdove
	 CQ63RJDuAXFUGhb3AoCbjH7SieXYds/N2dbHDHrvZDxTORh2BDeSBGpEUB/5HkVRxq
	 kGwcSGJC/UrZGGOXukhjrOqqIi8AX2pn2E3azRYvlpgTqich4gfIyoNvmmK0W03Q6I
	 3fT4IbOZdooPKvqsTJ1ddON408ON0+0Uf+xBzcNN3zDRcgu6gaZ/Wzc3QzLtKXsxSh
	 PXEOTtA8sNPMxf1AVlZ9K6gQkuFrp7KgKxFwDeW8F1kjlEf2If71JBeF84bYl/8HCp
	 18t/IVXXEXaZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541FDC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166351385333.19836.16356374873132405395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a68896959ae6d40935ae623f7a8813796e662be7804d31b399bc78043d5e2e8
Date: Sun, 18 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663513853
