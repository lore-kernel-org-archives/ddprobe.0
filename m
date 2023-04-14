Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0337F1
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 08:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 045D4C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681460526;
	bh=R+Pc9R1AUOo2dTow6rczv0hP0Fi4PsVMQlsPWCs/wKU=;
	h=To:Subject:From:Date:From;
	b=MsHc0SkjgHeICTmdBy9jxH0tgrUS2jr83YKBMGxF/oXdkl4HjYgU7H1qvY62bx7hL
	 SS3Z0PywQBFTgWIi+QujsPtmtCFUkS+imHMJSFg/Mwa/8iZkbvX8AeTYrM2zQx2afx
	 G0uRunFnizrVYiwvbLKf9GncW9iohDqV3PRoj80HU42Je8CagmBXrPimt6cQmr5d91
	 +JQlo4e55EjEoLD3Xh8KKH5YXUKD6QoDXAKq9lbt8SbiSwl0FkmEc0hcKl7JNAsLnJ
	 oJ4LEX+QqCuSFUDZ0RWdRP/flXpyv51LbLWrCqt01cBvgoqmjQC2FRSSf+DvnoZ+iX
	 EmSiGmYYNLEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78B3C77B70
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 08:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168146052579.17557.16896476544514928113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0598fdd4910f58017e2595451818050f67c8a6b9f4283ece633a2f997253e869
Date: Fri, 14 Apr 2023 08:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681460525
