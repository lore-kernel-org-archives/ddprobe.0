Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C385123A9
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69074C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662277253;
	bh=d6vsguTC0AIFfHhGeryufnT+7QqrZrHppYuILMsyMj8=;
	h=To:Subject:From:Date:From;
	b=Bd3AZbUeoePcZQCLFc/FvHIbe/oM+sjXRdqC+/1XkDgOa0rWXslCx+8xAzsEvz1Wx
	 27N9OquBixYYA5fG274g49+BC61jgI6DgFv33u7Z0C97nNSzmPUZNu2dOQIWkRPhrs
	 f5Y74ug+usk57un6BoZY89BaJ2Dmecf3Hw51ak+lPf0dEDnrsgn7ApBvZ0qKEpB5qO
	 X9BEBF6o4cQSwcFXaOII3grEk+gSJ5lwjgZweD/FKA6fiNKOFweBzNr7NvpFL/Tljd
	 6C0OhVnmqcWkZ4bL+lx5bgqeRS55OJ4/2C/Ipf5+TlJtt4EbUfbxmOdQL61PyIOybV
	 1Gk2UMrSdN6Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D11C6FA82
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166227725332.10672.12349058689029721020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ba94f38683d6078470ecfca66bb8080021d4fc6e0277304ebe03168d5f59e2
Date: Sun, 04 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662277253
