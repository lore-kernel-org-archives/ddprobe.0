Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93E61112
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D8ECC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672290687;
	bh=vuRCRBt3Rtd9/SRzN+XUaRIyr3nYA692MYwgRh0X85g=;
	h=To:Subject:From:Date:From;
	b=AYvngzt8T6Rv69ihLqcZTEl0Psut/jnTrhOkKTFCsoT7wKJ2lMaIEQBFks+iHhmKY
	 QQF5ClwMuLzQrNCR8ADSEyZtRvLFWN+PgkzuM6o4NVc2j2nN9eRo/ReE/aaZUOJiQS
	 FKp8oyGqKjxI/zOXflcEckh/jSt1q4EP+vuyilbf5Vdla8qov/6cYJytNYozWwAxAt
	 XaX+OcnMc8GehBsfF3/wGnBgmBF+3ueHBl5bDo4wPen5eBm9czLjJ3z1bQE5nTj7hV
	 pXl8kn4sF0A6Ctq/8EV9ApNRkSWmSeUl6Nz7R/MqY1j/OKap2trFllHALAKkhJs4lc
	 YvI8Y1EHSDunw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B65CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167229068741.14240.3046981100113459993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d3f90858455ae9df1fc2804368eff589ae2e8d7cf9c5e55b8c9690701ec637
Date: Thu, 29 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672290687
