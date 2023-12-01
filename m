Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217391BDC7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cegFpvzy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78ECCC433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701463696;
	bh=vld06Nukbswbo+GY0HRLq33kDnbvmuhj5KFVpfwWlGQ=;
	h=To:Subject:From:Date:From;
	b=cegFpvzyLe5EsxA19mZGtYlZwICho51fPNEg7TxmiQxJ56wsJJN2eN8XdEgp+zESH
	 KP9QtWm6qZY7n/synZkQaP5fFtlHcSpiGnJ0ISF1qNR8Rb3ikVC8llvAS2Wd0Sh3dG
	 Y//R4uCIP1eSW0F7slxC0Nn8g0/NuGFvK3qPHzjJgUH4Nn6GVwz2CByCb821kVg7Dw
	 /s6J6wjmh7Swm0yMH6dJ0yz45LkHysa7DXZYu3NYkLHi3P8x6pcoDtrslVI6OHpAo7
	 xI5LEQpstqaVdIXKGJtA7mFSLUaSQKaQTzStc/XJShWxlGft1eWPYGkQBpaEqtRQK5
	 uxq4fzMPK4eaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF6CC4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170146369637.25104.9870349588727112696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33de3e85031bfcb1802cd312d841eed484b34546c9d929e502e7c8ec07370204
Date: Fri, 01 Dec 2023 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701463696
