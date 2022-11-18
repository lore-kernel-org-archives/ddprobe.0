Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD11E3D61
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D309C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668810654;
	bh=zcxva4wtIaRFviGNspyYWR9G+Z2e4+Of310ODm/EQlI=;
	h=To:Subject:From:Date:From;
	b=eef2vL/BPo4gvimzaR5V3LVtnN7Xqm+PQmrpPeIFyT8n3OfTn3p6O+sZtKZOJA1hP
	 ffIBPxb916UpYWNFyzZgGonF1vPimPdNp1PuXWJdWIWfE2WGUTT7Q0wg6LRyF0ww9X
	 Lk4LxKFtyltwkS6Zu1WHUgScVlRHeKbH6+j6RR5L64Am1y/zfVClGop9ryvln8SwDO
	 krWP/SrueQJltrqclyabiORwzv3bMs9bJiCcwlRw82LXpi2B4Ka85hgYoS5jYZ5KtY
	 s8RXsrWgYmnGCdp0g1yppyFLTGIoPotOTZbLyqUpgekiSLXF4w8R/qW9U+TXVBV8rq
	 qkHic3MlfYFig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D08C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 22:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881065434.24248.12774952110821867223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62d2a158a1832808fb0499c7ea7a3dd92b49cf7ca817de5b925e7ed370657dbc
Date: Fri, 18 Nov 2022 22:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668810654
