Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1208BE0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71772C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668706254;
	bh=1krkBSA/fkPe7eGJ1+Qhf+ph0jiCGigNbw/g9gA070U=;
	h=To:Subject:From:Date:From;
	b=t1w7vJe8qMxbqsP7hM3iUACtcSVk8Fx74XHox/e1ewfCYe8BdYACOvwlsRKTDb+gy
	 jK6iMa55xWUispQR5mvh9NygS09k1U62lOIojl8Q4T1F7pkKxc2SvUCve9qvblnEzZ
	 D2eYZjdWVti0Xh0ahCE4b18XUUFWtVtrtwIMBlClzqSvk7OAMkVA/NztgbNvJvfXSq
	 JuRx9BL3MlTYNSldURqEN6DRl8QRlC0lIT/WxEM23xDpRGb8CYin3jvtr9Tpb9po7G
	 Wl6NjOXF1ERinvPkli6HHgHW5L/Wdgbnud/bIY+zNpl6eLe27qyWZ8ppZf7b0c+AeR
	 q99pH46CJy91A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B4AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166870625434.9949.8855647072765507059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766f0cb2c295ace32c0fbec48e79ed5f2ccc4cf5124dab579c4509fd5805ba15
Date: Thu, 17 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668706254
