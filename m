Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E118410E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84239C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670719287;
	bh=tFLxplvvI1+/grw2S3jI9/QaermTfCLZjiGijYnlhxk=;
	h=To:Subject:From:Date:From;
	b=stLwbEozcIqUaY4WfoBaPwZZx3s/JOAPTWra1c4n+/jcYut6pbKLONVTTor55+Lz8
	 s3ZLF+sAp2Gr0QNzr4cImYliKG24Nqar91XTiAD+7JC0hNQ51xQ956+M/tcQ6E2vS8
	 WMBjISpYopv1Cdw7EKueo/cRRGWWmPetKrg25hyxryJn+ggz9IbsRwk4wJDEmE0+1U
	 YfhDCYY3C89uQNe5aN5blYQHCh6t3Jj5rn4Ge0Bjs4P0xwfdTFyjfkzIum3kODIljc
	 TDrWcs+zCkxmCn2RbrpwKOhtFcCJhXH9/N+5tgqF8+u49hIN5FSzfNDlACwH0gmkDI
	 P+s225DI+HUvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677CAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071928738.19697.3617200546384390262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37049dada9d423b033a538625a67410a9968e3267501d2bc4e969ecfbaa57233
Date: Sun, 11 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670719287
