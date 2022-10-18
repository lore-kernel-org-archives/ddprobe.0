Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B427F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1A3C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666068653;
	bh=4yM5QGDaCH8GzR2xoWpM5VSo9rgQaLtHEWAui6Ni0mA=;
	h=To:Subject:From:Date:From;
	b=mgzusx3LY3Dz47+71pn8NBsXtx0TJcZa1Arn2oscZzWo13fXqN2n9guGkKuc2mhJs
	 V9tVIYaQozoCQtJPWHAC+6nIIYeZfAXbBxRdAH/8CRAaBP7Unc3ShKcRF9M67is6O7
	 G5Bo9Mo4VOJ/FHuyfBJqEV8CXq88aEjWdBCTCKFX2QWLdkHaParzQSRThtVstIOHFF
	 pjQHxIGAbjnfrWWtbigxroc0EbUREBmAEkeberNpRZcoiMIefp0a1l2heY/lQ8NMGq
	 Im6E8T+3cLkN5ho4CbJixz4uSquYaWGsWPPE/BEyDRLM84wdL2afwvm6B9MpH4+9t6
	 fjgGG6xnOSVPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AD2C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606865333.9117.11007874893982116610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6504aa1c09cc3ac1db1ddce544e1ebdb1a6e586e71894e261ba1c73f8258ee2
Date: Tue, 18 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666068653
