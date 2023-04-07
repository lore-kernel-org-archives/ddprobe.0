Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AABA2D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 06:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2514C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 06:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680850085;
	bh=XF3xmi3jVZLcGCFkLZ6CPDx9YaWycTcaZB7iBVs5Ptk=;
	h=To:Subject:From:Date:From;
	b=dsRiwpXQV7eKnk5wITbHhRRoXROCE/jpuUz/4Kw6LMS9Sl4RSP6V0ZNcOaQW31WZW
	 yRd/fq0RBiYqwkdtWt2vRZoPPik8NMvLj8Z16sUqRrUONLbJwNA1Ghjb4j78EHmmsM
	 q+69KFA0HcuK3F0SujJ2en40tZb7bdPwufM1okSQis4rLpwsfzfGqXnrMda1U6Nh9F
	 53WxJrl26HvUBA8PhjOUHqjahcx0BSbnz63AHVGeqPNXH+jWYgciDliqizIrey0KCZ
	 QD3wfpxDb+2RNkeCFZqvrEkDiFoHS/LAzSz+SSwe2wvd36kzekqzE9eV41Pjzc4hiD
	 SI0WjIT7AyK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20F8C76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 06:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168085008578.464.7791763078110682414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c422ce68989bc3700aa135c4b1c058aec6beeeb967d2ae00d15eb4ee8c29984
Date: Fri, 07 Apr 2023 06:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680850085
