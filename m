Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55FE7B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFF5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661431852;
	bh=I14xh4YS0Nl7x41qAB9J6GZo18L305k7sSKnA2tHOiY=;
	h=To:Subject:From:Date:From;
	b=uzSy9vJ+IVk6geawGSg5V09Pa1XgU1C/D4pXYoO6ON+UY4a2dhgp2vsDFTvoiAbOV
	 gZ/SvTAHZmEM2xRU0hF/lgUtTQosza8R84v7nPh9K2jiEvkhUJ2faBd9XzrStuK8SL
	 0bsawftVKm8ssEeOnkIgCy5ZUk2T/2u7936QFoyTmz+i8+LLBXF+7pT1X/kBx1mIdk
	 Yf0wWPfmIcBlcArRq6m7DV/4My+oOQY5b1vUOhGCRDUVG276/1ftzD6JCAulHU0ryB
	 dINrvEuItOYmc7lBe1L+erTDRHrvXtxdgn3rw874nMqCcm81jf+bOWTj9bmje59EFi
	 ifTq7xxJ7w1Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E97C3F6B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143185233.21676.365261777501586585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96dc7f5ec0fd3fd25bf577a628e387debd64115e0c692bc1c1705ec4d16e2f3b
Date: Thu, 25 Aug 2022 12:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661431852
