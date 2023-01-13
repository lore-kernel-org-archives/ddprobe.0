Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF665640
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82CEAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673588487;
	bh=oRUmy98tKMduE9/Wq/XFe+Fh6n6IuyDGrrXhjd+bqW4=;
	h=To:Subject:From:Date:From;
	b=Ik2Nqo4jCX+w9vkKb5U6blhR8LHlaKeE7pdr++GFeXw1ZDKrztaDJNV1/FzF1OM9Q
	 2r0tKyKn1IW/XEyRYAnGMu7W4XhBNAjB5j4/SI9U7RlAVNWBx0Izjshu91F3rkiszL
	 yG1fdXvl9crLOkjmfF6YUm+KEo1niSq/Ma/9g2MRV00QM+N+6tIy5dqLI5eR3DOvH9
	 WLuCkmFBmTTK2LWRM3Y7htX5mvNKHAYLDTWBGLH0BxkU8xgydrlXCY94i1TdbjnDwa
	 o1KwyJ2Yqi40ieR/yA4WWZcm7Ocnh8hL0B7V3gERJAs95Os4E+NpsZYd2WLc41HURj
	 yglcm4Ra7F+cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B58C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167358848740.13633.7344158972154580916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b70cca80ab1a38273288c3766020c33e0e37c95a028fd65d37334ea26db2ae
Date: Fri, 13 Jan 2023 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673588487
