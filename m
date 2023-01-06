Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC92F7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87038C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672990887;
	bh=RzQJOBLFZazqfS3VOfFbWxWhckJP4S37iDYruJI7zDA=;
	h=To:Subject:From:Date:From;
	b=F+V7/BzwO7Us54H6qmHd0lg01ZOUVE2bRnbctrN8FqhC7Ur35fr62lcw7SJeKbd8T
	 P3dmF8F4q7SFmTgnraKEkmOYdnvLJARG/hhgmUXziDaFMXYbqKvgJWpwAXiOP8T64n
	 ZGaIDSVMSDxW2aLurWQ34CX1JmSLgVr8jFuVRTeLcL5fY0rRZkqRp+1EXy1UPnEM/V
	 SLDnT0XYO+Z/5puybbisWYpatfGuP9iFbCgrmAIuQGxhKcrSis8WyGbWRL0IQb1z/S
	 l5+FPop9wzhVhmjIVEiSh3l5z6Mp7m5YR2e3F8XXTasfEegxPzj76aO+gNsQCpEwvc
	 Srlxb3yyLkK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A94AC54E76
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299088742.23685.16595542809126750534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729c5a36dd51302054a77d4d47508cc1534b0300c9fe12eee7cb4990adc6d67e
Date: Fri, 06 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672990887
