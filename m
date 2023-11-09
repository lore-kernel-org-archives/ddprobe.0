Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED9C736AE6
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcyRdkYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2CCC433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699555096;
	bh=Z9BhZdKGk08WhXilYEOMEDrc5EcHxUUgnKB1iynxX6I=;
	h=To:Subject:From:Date:From;
	b=qcyRdkYS9zvxfSCcbTDyOc5me4t8Vuj0GYKnoHhf4i7xQFwuYLo8yM7Sjq0N4i3hQ
	 kHfmzBWY2vEiq1FWChGLigVk4dvYGM0uS1g0OvlprqtQLg0h7RykpeIYmCI3fGNRjP
	 fzhiLbOB9jmvBeHn877pynXsGNeNBiSaA5EyhM53x5J4JFZNVq3bjw1leeFIsOwnK6
	 iXH59zecxjKmXLLEllGPMyL/DirsunH99RnorTUmx0lbZrGo0XpJSGuPmv96IJBPse
	 tcjurO4cszo0UyY0tab7qsJRw+ep8STnqMWTiGtar3CZmhW5qY85YAFRLC3bLmmO/l
	 wfIETO5J3zjrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB64C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169955509638.30555.11914207411958565025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53514c6527168df9edcbabc528e5eeb00e48f011d9ce9dc415d6333950581133
Date: Thu, 09 Nov 2023 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699555096
