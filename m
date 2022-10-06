Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87E4367
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75CBBC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665060053;
	bh=AZiAgOg1pS6rygSLGt8Pb4DmfSpTiNR1JEWA2bdvGKI=;
	h=To:Subject:From:Date:From;
	b=V7oVxaa1eyAehkyQwP6sCEVuvOiapKscb0iY/5Tgsr0l0zKOqmXyfhfXB2PEcHT1a
	 ke02H782hsxJybY+B0Tszb+oxQo01H2W2OlP5Pwd10uMgtPxsN/slZ+DWbnuHja8cY
	 4ErYbt/YraNfP2AXHWLSaAMUfPVPQF0BWIOdJHqb76q5fYSZD7EKVo3ByeW02c/6cI
	 nYEser+7yarlW+iKo4/zrgWaM5xVYTgzQhWxLOKL9+B4sYiwzsGgu+kq+AYbGYew39
	 +3Ftk2aSgDpjCNqIpHOe2Grz3PSvO4nL8Fknb39aTFT+OARKXTDwWkRc1RDlGQ1BOO
	 MUMn40YSledJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523D5C4332F
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166506005333.27479.4380855914959230845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e29bdb873e6385a516726844f90f27ed2ad13917d3585392b880c7a1552122a
Date: Thu, 06 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665060053
