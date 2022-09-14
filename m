Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7A6E15B3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FC1FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663123253;
	bh=AmE0C9+hIfD0gvg7qRyYO0LFLG50ATdPZYpXrzPxjAU=;
	h=To:Subject:From:Date:From;
	b=QjwQWMW62s0DpJIOjsOxNcEGwTFXXAwYAoXAlfoyaoWUyyZljODLBe9hs3HqqYbIT
	 QMO/Ehu/79RlT6AQtEr+c5DVS4gTlfvfSP6UECDllGLbMqtQAXHPCGjLw0fdBV8KKY
	 +e2MjVnaNze8fAiJVPrcNBimEpQrmiJfUW/hQnXPoMkvJHppotubmWomggUA5zz9wp
	 td7n4LP8lDc2HozSxS2qOGAbkAMMnhXF/5Q7VVBrHLtbAQmBup6GDo6SYJiZAXG8WK
	 V28am/gpM9VcjjnQ2fke05PWsSHBO5u6CEY+yABn7QLLpSf+BI9xE2JDCbjqTCP7xW
	 IIXWgbFukWI/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5148BECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166312325331.1834.10659098011105368799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840616efc609a922389fd91d36a2f226be77deb0e324ae3b63999e3080dbc7c8
Date: Wed, 14 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663123253
