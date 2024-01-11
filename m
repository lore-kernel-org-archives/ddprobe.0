Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7AB524A3
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSBEHt8N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E44C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704992896;
	bh=xk52USuU3tL3tk9i7/G0L3bZlOMsl/N7jZjGrzlSO3g=;
	h=To:Subject:From:Date:From;
	b=dSBEHt8NRBUouPCfnalw+iCbv9lUpqtk72Mw76j1Xcx6la5h19WNdF6vheTJrFxOD
	 cbqmIPG+udVVRJo+bViO44cF67m3/U3kqPOc4vuIRq3AxghcqAPotg/yFJtdkcNUCg
	 eeGnzScl5PPxkIA1ZLIQulvZ8Ui5IFXU/B8p5EhBF8GqQwlpeCKSG90BGJGEpfaxHG
	 1M2QuVQh3Y1mokPKWi1zxNogICRHRvECn3YWaS48uCw/28FJDPgsAcrK0V69Z+APGv
	 Qt2I/WPPLORjrdYMaTGB6Pwn1QEZgrxQjZUtj0K+0WL6Pi4DQ5jWnHYJYZEwmot4f/
	 bkGmA5C3IsToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69019C47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170499289641.22010.8694737139749405491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa397cce4406f660fa6ac5c37f38780a31918a9199d660ce1eb97ee26e6f4dfb
Date: Thu, 11 Jan 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704992896
