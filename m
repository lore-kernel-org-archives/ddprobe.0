Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67BD1C3E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F860C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672378887;
	bh=j8BCMfEIPSXyVGPFdUbX7iOJOCwbqIxRpqjStBm7hMs=;
	h=To:Subject:From:Date:From;
	b=kZnCEN99OZh0kEF0hqb2Lbr01Ve+9xLfyAPVVCmDEiPonJs/x71A1CZpGmShEyMyu
	 sH7HId9Egu1LKYwFDwZlYb1zcnb0ShBnI3II5HtjQaN+pE9d3y4xTGoetqWjQ2HnV/
	 g0DwdphveOYNB+BXOboiTYgH85bLn6rVGo6se0msly2gMiKdhKyqx10mOUZzE68BHf
	 6EwclyLFrEHQUFMSC9T1CnBWdJBtdMJpJQta/iiAuIu5nO7YJUi24lD24gIDMIDHMt
	 69vV87JiROPl2ThuMbBAdQ64mt4P3ftKchnsdxDupwyXc/K7K0lyWXiPnJvn+1OuUy
	 DFgYaFCJus29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70201C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237888744.24089.15278894977055297320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b321a9354c506f8d288a2d3e8cb74ca09d082201b84d4c80d5efc232c512318
Date: Fri, 30 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672378887
