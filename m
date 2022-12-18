Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04AA97E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6C5C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671354087;
	bh=AB03iWrw54nnWkSA21dD4WkHagtATCB4U3YnHbuvowc=;
	h=To:Subject:From:Date:From;
	b=p3EPQz9KAGmGa0dknDP41IlEclM58i0SdBK3JHeB4Cx3D+69ZI/CqllH2Pwwk6Ljk
	 F/kXLET3al5LMgwNagXbW7ERwjaEieQbeMNWaIzCqRu7EtXkPBV0uxxxFLxhV83WH6
	 ShqddMdXzMFXval9bQmZp1HGKO/EcnN6+4GJIzm6nON/UK2Ro4vc7y61NHtV9rFgGd
	 dSOBmFWhcLkeBoM3gO5mEUAfFt3FMNRexpDRbI0aLeuFcPs51Q3NoI0V0gE4k211wb
	 +EbCulgJJUWQHjr+N4kc28XvhTyuAH4SBgaPg2eMPXWk1aUSuPUtfIkSRz43j9i1O4
	 zsI96z/BJ0tXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77410C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135408746.32718.14605303266387930613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca37fedddb43195b56251216162fcae5fb045ad15a6a05dc23f4dc3cbefcfc6
Date: Sun, 18 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671354087
