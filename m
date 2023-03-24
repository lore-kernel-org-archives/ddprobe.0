Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602283C24
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 09:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11B2AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 09:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679650266;
	bh=pJUMt/uS7Fh2Q5rogVxcaxCVSy6okYPOVgDeWA1qbFg=;
	h=To:Subject:From:Date:From;
	b=OCfwB5Qav0hZOUZxbUo2FaRVfdpM3g92AG3wAl+ChYjjAHm1TaN/rGeTgDzPm9DTY
	 u96LLPZsslpji+zMgInBL2O63ucy446EzZF7ZHpYOY8X+hga5y4Ltvo9XnZKKUcPc+
	 YQCO5f3y047rw7bNPpHPdvFLlHNk01uPcqndRYtdvmX1xKGI2cShKIEB8Bh09KyXHw
	 fSOgITyXimJL15aqqCSErE+MfWoFPh71STlyXDt0wnf+UdqzG7scFRhqLppq1Li8+e
	 SkUrmmO+3X7sQ+D/ISKQ8NIJyMaKsJu4QEyHd6rXFRs77eTLpEqePhtwEIxvCE35xB
	 iSfsvmkMZFWMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1C9DC6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 09:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167965026590.6338.12515721847319218911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d89e17391a1b606ed9010e06a04800fe72686a4b166c3021db9683ef1d95d2e
Date: Fri, 24 Mar 2023 09:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679650265
