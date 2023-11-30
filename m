Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B395FEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2W2YOgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779F8C433C9
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701377896;
	bh=uQWTfVNYiPnXTe7snMcR5veSX3P8NQm+TE/7TbrNLqo=;
	h=To:Subject:From:Date:From;
	b=F2W2YOgfbDO6sE4IBzXhaz31xnW24Qrja9YygeOrVcDAW8yDFLnYJiDw3kXbqeRY/
	 2sPCZkvx3wNzLkG7wVgO/9bCcDqIa+4KhJceSP7zL0FhYZIZPBy3wtMLvEyW1VIqA4
	 g+TyBey+NonCYczLn1r14mqlUnDsK2c/sWRsCLP9tBHctypnsqgjeHf4I2eGS59mRw
	 lJdSxSpZ0Jgs9SWpmskie9ItgARe5qhrYccKkuY42MRBsn5Kga5Vz/ub5iQ5nxJIkm
	 R7ewx1sbOlRyhNuFb4FxZR5JmM2wgEdw8A7NSQlHrmAchLBfwbFn3gx2vIqwVbz/JW
	 /tAqToPszAMAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCA3C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170137789637.7608.2095179315003546665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe52d49fbc37db090a30d2d97fe311c7df90b8dbf88a5ab2275e351f7a1d700b
Date: Thu, 30 Nov 2023 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701377896
