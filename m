Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FE4635
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66C3CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661919653;
	bh=Ia6YoL1k0ZN8dX23TczI4rOHan7ivSN85cV9Rw4IaUo=;
	h=To:Subject:From:Date:From;
	b=XTNq1bwTOYdkoDLr9QOwoCKi/2aLdbzRLOH8JF1CZDg0cLCIZ8I7FZUYvXKPcpKrb
	 mGFg2fUwejFqBzM2czztOyISCansFarnNw6aFUG+UdTuuQC4RmMic/8FAByZWYuW7/
	 Ww226d3nUNmWL0rgXAPlzQU7kSdZ4OpUd1t5f2IM6HzXChYOaLlhBkDc4vO0xO1ugo
	 QSYB/1Hgg+X7U5ShLXBvoEYWpZAEyN/7ufrNZsbygnDCd4WgewlKnVEhM+YfDG4vlx
	 Aaj65N5lssD+ScPy8k1vG8XHNsaNzdCy1CZLVxwH9GBMgfsiCBED+bIFZYD2tbdrVF
	 IkfSfZLepQPng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD5CC0502C
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191965331.15393.1570222677208180859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583af3f48f797ae1622deb8065b8bfb045669ade2d5c06bd79a58dbd9cc145e7
Date: Wed, 31 Aug 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661919653
