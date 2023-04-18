Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A4F15C7
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13AD5C433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681795146;
	bh=UMW649QeS+xPMFqgip89zWyN7QMyaNl9ZH1iam4AMXc=;
	h=To:Subject:From:Date:From;
	b=QyE94AOLqiDxKUlFOp454yFC+OgnzLAV9vblq6PjIYNf87jGBwmXgT0QwcFc2xkQo
	 hUq4Vb0pd1PcIE7Dc0EPGfhEJGr147hRysFKm3cy3HC4yDBewo948b9ihVHuQRBSyq
	 OojH6epFIOF2Od/d5KhEhEWlAo+f0CeQgN57zTvr+g+91EZb0J02IVTx0dRLPi2IYC
	 s41Tr7K6vWgmX3ulhkHouXacdE0FXPYQxvhF20NcU95Y9kcNYrnFxeoueLJAauMgUu
	 QxrCFNU4thlayaO7mBNwQcDCuVo8uPg+j4ZRnsqz8r8IUOUOj66IAJQZA+DFneByAG
	 smIIsE+Sw68eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBBBFC77B71
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 05:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168179514586.18632.13960852492707365636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa84707d90d89baa75567641aae1652f76e648b7c1cd34fa63236f94671c7763
Date: Tue, 18 Apr 2023 05:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681795145
