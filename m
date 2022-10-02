Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8AC15CF
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9D8C433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664686253;
	bh=JFOccV3IJ6ond5S/TjMuUkHJQtNb63ro51wV4T1rbBo=;
	h=To:Subject:From:Date:From;
	b=s0edFcvW/1YpMjHfi1NPO2QGEBQjUqaFV1jWrcEGWWmr/nFEXjyQhqZ/di0z1+EWB
	 WiWM3oe0LY/a8Nu8MTUPl9DyYRoiRNfq4rratGK4a3p0dSQYJAhJwgMo7G6O4Xx7xw
	 MtUGecO2ZqP34QhiSrsi3yPzLLe3MfMq7q7oZrTqBMaM0NNEk1uzHveHdUmBOOQQwn
	 MISmJQnPrNZfJferuJPoYhSSt93YQfPYPqtobocdvrV1KprkfaPDoHYq6tki2XawIb
	 m0BvCH2r8oQjvG+wNK0Nuq/t3SNNxe+IvdlwdQ1DP7UsiEtrxQdBFW/9Zf2P4yJVZx
	 HXfPmDdum6gsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5582DC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166468625332.17353.2827467457936091710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03713ec99e6ea30d9d88b9d907f768d183db304503add734766f9cf6791c7afb
Date: Sun, 02 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664686253
