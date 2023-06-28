Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5410923BD
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9723C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687935188;
	bh=71cy2Td9wMwx49VVnvJ3QCAH8SciDLFQobnLSYgu9Y8=;
	h=To:Subject:From:Date:From;
	b=ri74U/SKG0FDCsx6gh+CppHIyoQI4Vt3osTBIwSX7ovX/kGOf9GXpcmhPzxSTjcJ5
	 /gEDBqYlo2Jzsl2DIIls91NrmPMxsoAQHOUfaJFlzFtOBDtBXSCKRtulmqO/S75gOV
	 vfpfSroI7Ex0ptMgFr/RZmgkN/Fe4D/IKO/FChh2hduX8RjzIJ1KhmOMJKVOM3F0s+
	 J2VWN6dHOajw0ScIt58aXVVHHtnJJyVEr2IUr314sbvK1CB2XgQ7NAgQ5ngHBBwow1
	 HyeoqHsEWMri8jFeKA7tncU3XiSp4mJabxhMsKQDZEYHetwtIqsiVF5Uqb4dLeXTC5
	 k9HCAW6GeuPJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD964EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793518869.6839.5492470349983677288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b259fda323750e0f9d4f6995a76ea447fa76d1156ed5e1122c547b394aa653
Date: Wed, 28 Jun 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687935188
