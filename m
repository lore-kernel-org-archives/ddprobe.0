Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A16046B0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 18:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC212C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 18:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687629788;
	bh=kWPxTpIAm9AJ6J7eshAvF8mgYQdw2mcj/jbeAbO3XYg=;
	h=To:Subject:From:Date:From;
	b=A5eATnOkCSQGq1BhwPHRjJiHG4nu+M78i8IpaA0j8tXRSkkcYO6UxmAjAAc9mPMbo
	 i8szZ5y7ZhA01bDQmUC31EtYxaoZ0vrXdmPba6kG6aMJYT48sZ0QoQUPMuldhO9XWx
	 DIcft4bSl8ku4yLNNVK71OWbnNUhfr9q/nHpM2nOzS2rY+4GwoeVKwrDkItLaBBMpC
	 cRSo0Oa/XXszDUmWI9bKCeEjzswcwRIgWwzl7ueWXbm4Gy4A7TU5AvJNl7yz0Y/54H
	 xLOtc30gIo+jlj5ROEiPAwOMCUuaPM3tV8U1WQoBwYcQp8fu2bN3ebvfzgGgeXZXm9
	 BluWowf6DbyhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90F5EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 18:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168762978868.7857.3681969042182778070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbc808198e672531392421264b0299818889592e191cb05a956993c626b8506
Date: Sat, 24 Jun 2023 18:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687629788
