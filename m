Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FC7D50F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67EE0C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669850454;
	bh=zFNlG5UEJVsm2tfP+MRuVGVZBlbiMk+swjsSbMNEvds=;
	h=To:Subject:From:Date:From;
	b=SpuVga2gOEZAsVlnSQFoTuYhbRXRMWbQJmJ9ykFb/z759VGv6Ic33R1ko4ODq6u8L
	 3EpSbN2T7ENHvmLZKIUOtjqh09HRMu/+VEWy3z7zrrNaBbNz/ex0QNtwjsMgYGoWLt
	 gqeN8Zt08vl2v/I2Huuei6GbKPdjGvrsbMyP0qpjM8h10maa3pTc0yW+yo+x4QUHn1
	 6kUSDrBziyABi4MlmmmL7zqhvcUSllzdxCtU7tS5Za3OI+bX+ob+Zu9kDFn+ALXRAa
	 ke3gmhYSA4uY7kw01XnfOeDEVfcwQw9KM8ZzT6uEi0xQYW3lrfCXVoBezeA/CGgdZa
	 rw40hxfjetPaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E9CC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985045432.7205.13980866439777307096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2c210b509acfbf768b9f0e54f7e5593a4ab7d48d326166e7199156df1d0f39
Date: Wed, 30 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669850454
