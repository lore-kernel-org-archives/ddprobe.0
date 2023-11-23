Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AD95246
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gr9OCAGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BFECC433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700708296;
	bh=TFjp7Ob6gu+4cceyR+otkxWn+rhNCNtIrbooc6tZaKA=;
	h=To:Subject:From:Date:From;
	b=Gr9OCAGVY4jbpOJiz6spMr28sQbQu1HAuF77K4zfgO3aehwHDOBX/+iyUZlCDBcTk
	 OEu1xMEKovtGuvnx/RdRLXFmJk7+C8PvxAByvLXxJeTcyTdYo1rYChvMHowSuUceUo
	 arJHuEacOGs67OSTHEkpEDCRaS9UU0eK8sZRKKhYBeCZF9ICyWjcyGMf4HKOlhZvWq
	 AaCGPFgma1GR8KXnzAjGKIwMs+eFdkptjM71Q02hRDqhZgupNSHb0+eCDu+5MFl7jx
	 8/00tetAwtoEs69mo6HS7TAnCFvBS63LJKKwz0RGAHDnQk41rL8gMdswxnD3t51Ufw
	 y5P3/hm/7AodQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DF2C61DF4
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170070829638.18031.11165928597957596083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75673eb82bbbfcaf71e38af89fa6ee8a9c442c990e04c21672e44fd28b6ea0b0
Date: Thu, 23 Nov 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700708296
