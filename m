Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C90319D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE97C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687480388;
	bh=MI7OdOCXdXsHZztnpMcvVSxlMDGOB9BOyTq4XdLFqlo=;
	h=To:Subject:From:Date:From;
	b=K5FzkrqImlSGYq/lCYMKzvqp+akJSG/6yFkvKdSn0k8kh+DebZP1kBPoheRM2gWi0
	 7wPN/sV8sU8M3+iOxq0Dgj9RurTp4bZ5H5nsFlrMAK8uz+//g7QM0oWGLXj916QmWs
	 zB2p27P3As0+riGG/ZtyHlsZIP9OCUblDj0FsjB4gG0ZRsj+ItCyHBH4U2YgZY9tuX
	 +f4UCP87onLUVX+U2NmzSeFD13Sbl6LkgN0LQ9HJPabmWLodM1l2baSM/Ip46lpq2Z
	 YXSUrwTiJG/XCZmqb/k+KYgekmPPpyv6JvJkpXQGjKQmeAUjmKHXfdv4oeTnna9KwZ
	 yudUWPDK2BdoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF23EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168748038869.29218.10738365476092699898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba17580865eb5209e40a1d536f3bf3e12d30829cfb420db5bc951893c511588e
Date: Fri, 23 Jun 2023 00:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687480388
