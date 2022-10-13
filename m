Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9C97B
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 898F1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665655253;
	bh=tKRyaScy4unQTMbdeBBWXcIVXzbTFvd1ZFu2ITYKYus=;
	h=To:Subject:From:Date:From;
	b=MVVoyOdb6ToRy/ILWQaqs/3YoQ1Jq+KaBk3/ZTEoYF5nrDx/AocLe39tcRizcCkQE
	 0XZGNjsQbif+jo8jzW2VZQupKbWiFCXLUV6lj8Gh46NID4SBLY1ECqq6+k1ez0vOOm
	 2FeC+BaW8NF/xMskP/gne+jypkGPlRibiNvFO3gCRZ5DrDL1FIDvLKiGpF3J++Rh0M
	 inMG0MMliVnfB2G3dxfowF8Ta1FGe3U/z0a6k+0isms/SWzVVMwX/1iaE7SpDbDxmN
	 WLAOsbrWl05ngwoiCnKeFEt6HMqSca/X7tZilx8ZY6c75gcvV24ksn05vJRAPOn86I
	 vWpFZDtdXod9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC6FC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166565525338.7152.14740837966505193645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cded349ff005bf502e888a86dfd8ce984b458af4d8b8aec6d955d95c4381ad40
Date: Thu, 13 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665655253
