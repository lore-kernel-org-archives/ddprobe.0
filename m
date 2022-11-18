Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5063D78
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71771C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668788454;
	bh=IV78zfcfAL2bq2oW5qkml+jsHG7PT8FGf2OXbL045Nc=;
	h=To:Subject:From:Date:From;
	b=sCnVQsbHBBlgh+MfHNLAyNo1Mhzc44JaY47SoGIUxCyqq4TqK7bNurFRSZtLws19C
	 RHLINLzI7zBC0tHoTmOUwtBc4M27oqQFk9QC2zth8/F+IEcWlbMW85VnaYtIyq3vCa
	 WxUK6hSuOQGQsAc/HPK9GxX5TsB8Ed41EeAIURtnOJ8Tw6WDArBX9K9WZ++kvJmJL4
	 sf2GpKLGeGttj6maKcWdl2eHMD3sxywpu6DrpHbWf6Pndx1wdOHVNfwX++MqYQdM4R
	 8O+WSOJ8LtaPuQfxkG8NmGenVlnsEeaeh+zKnjGrqxOK4mxN41sz4VQKdDw5f0BqOK
	 kUweZ6U2joEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B71C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878845433.8979.865291498252342877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288dfd173594674c9b24becfcd6dd2f6e2dd6248d63c29e234da46420665110a
Date: Fri, 18 Nov 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668788454
