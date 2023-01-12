Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FB0361
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E44CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673488887;
	bh=5gSFr98f+CY6FPSe+JhhIDY3ePLRN2PankusVOao04c=;
	h=To:Subject:From:Date:From;
	b=usdo+ciPwrfwG2ZfOBge+YllqASkMeJjTLrzzCKwqkXQVbf31cIJqd5+hiAdim8/R
	 sCoUJecsF3/CUdndwxNaOqXROyiX72aeqSSjzgDlupzPkvLfx5GrNLYBtBvD0pqRG3
	 5uaErM6DFv2lg3Opt20QoYhTKjmZ2i+8yOwTmuAEoedoxRBCglEfUcWKMQrUgnNTeq
	 eft+Ks6da/Oa3OApv7DeeuhuBS+2VVRuHQPH0oZM1OheB0f4PlcDBWKkwIZ6aCkHUI
	 bBTCpGt0C8eg2NQZZtd4blOR6GIKgy349lKxKCGmD9D/K+LAK1kPZ1bvoMQaLY0uUP
	 R0GOJ8KPDaGqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C67C46467
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167348888739.13788.2099947940856907530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66938a9a875404107cd50bb0d4c006f91151f17429d0208e8f00d343e7a85c54
Date: Thu, 12 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673488887
