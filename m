Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E0F15A0
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B1BBC433F0
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671618687;
	bh=jSZQXmEJBJmzxur2UClwBhy+YPxe9ejE6lVu5vYprGk=;
	h=To:Subject:From:Date:From;
	b=K3PrDmCyvEqVyX2TnQPJh5++IFjOCV0tEdf0WRvVqDacq/N7kgn4h3c87lLgRIRF9
	 Oyv/vIEoidP3y1R4aZD6nra4sB/RtlfcJnzg1AejEDzv2lVUrMfix9DO79KXJDj0W5
	 sv5waXSBJkDvkaa9ov8sNgZw2wx0RjVssnDCzrJIAEnIhNQJgIzLQqtQagSfChzZGn
	 0TfeG2F7QKAPgg2FvEG386zXJ46x7vfo9AAn8GTGk9lAZITnFhRwCIhdAnGmF3kqzL
	 4BTh25gcUJqB8Y47CFeHmChvY3vt18lX2ovkrdnaCoklHy7iymyW5ktyh71gU0tkDt
	 cai6nfHXnEVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6221AC10F1B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161868739.17681.14887834010305792300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0727273d1751da662d3f79a5b9a738e36eb4ccf571cba02af9936dbb2139676b
Date: Wed, 21 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671618687
