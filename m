Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FD981C
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EBCAC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662035453;
	bh=frGZxWKFIZ4jM7SZu4/kqHIgfyKgkVXRcBOF/8I2ZSk=;
	h=To:Subject:From:Date:From;
	b=IQBbMLYS0yv6G/IPcE5sbUrcuHRw4WsXxt6P5lnv4UFdp84202GGShswec5s61P2v
	 awIqNeQBqOJcTfP8YBCi4HywYE5/tW4qudHQNWGcDwf5KR7Tj86Oi2NJrqRpmaz8k5
	 9kIfwhV7GZ9k8UhdLCR94be9bJH0xQciChiJ3mlEmbzyhi0AO9PhQFBR1ZULoOdoqe
	 JrzL8+m5ZTIxc42QdFWSZyscKD4kwORQg5DyM7IYu7OkWXBQ99yQFigJjz/HMjpTA2
	 zAvIgWKQgjHn88CcN90hQvsZ5KkWMSGRA/gmCOKh3th7DxDc2zo64GC4BWpGLS2PUs
	 nq2vxldwrk/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5345CECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166203545333.7863.3388092928472999297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c582db307f54715bfc5a7473fffcf306412ba4572bb5a32a5ba34f7ed84ab96
Date: Thu, 01 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662035453
