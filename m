Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D052C3C2E
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B4AC433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661876453;
	bh=royUvTqXmeh0zgzwMpJIrloFYFn6aI51nqVU46lkqBs=;
	h=To:Subject:From:Date:From;
	b=lTbFBnlNF+aAT3dsU2AvjM3AnSc6Kicg//xgPhewRS7Ns7w62jjC9QGfpaf3greIG
	 4djEwzLK/U7ni+KI8yTX3o6fKqxARLlCcgJBhqQA83z4BwZI8Qbz0daPc2qCL/suEN
	 YWPQ2hr02JwJE/ygk08KUzCkxAvBbzMtQTrnNjkoN9jFxcFdruiIO8ijCZ2sHbMqYn
	 wOGECbJw28JOt4u0vjDI9hS1DxYpOP0O2HFHPpbgir99MpnMysBVOkXF6fF1no/XoW
	 /hfnt4JXjTbOwDStpeKN2XmXeN7XHsp56pbLSVkgObLuLoCBbhzj4XBlWAHhZ+nAFD
	 v5zXg/3luxK5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C45ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187645334.24423.8769330957806462673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4710570acb508a20df1161d6d5b7584cd19da8181369b4ef6f61a18930d9304
Date: Tue, 30 Aug 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661876453
