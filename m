Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7DC10E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5CAC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679293025;
	bh=4nITdXAgyEFtp7xspU81zMir22mRBNftFf3ms1W76sQ=;
	h=To:Subject:From:Date:From;
	b=sElB0pHxegpemAofuSzusyNfGbuALKuuOLEuVs0H4BjmgFDlquRzZ8K0ObpPUFjD/
	 bPAhh70ZTIGTyJy/Ycge7LEhXCmFhlNaWU3vHbnp3w9oKIQ8k0129kp3wIvLjt5yd/
	 OlLTRVMOUPwG/8bprD83q4kH33Fl+1Izfq4FefPF9o08Uv7sSJOIpCEkP03laYTsAO
	 HHwEVFI1WmgMcne0Dn7j8/K8XxBQuktGDnyJPDYJCTxiefNmO1SWg+vYw4gDq46kL0
	 frGoqJzJ+mhJ5u7fkYg29i1CPK2Sfh9kVVlBojf0qfgYrjX3ytcA/2+CANehzn8OJ+
	 XyNmI2WYzc3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF8C6C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 06:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167929302577.32609.2274294390619068846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e91a1458ab1f4e44ac8d9c450f013bcecf62120fc9bb5fdf85177513ae4fb0
Date: Mon, 20 Mar 2023 06:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679293025
