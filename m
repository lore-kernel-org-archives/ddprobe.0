Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24844683
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693D6C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664927453;
	bh=rs8iinNGMHHnxkrgZ/jUGDSEws8FDMjD9LkZBhUEJOc=;
	h=To:Subject:From:Date:From;
	b=ehPfn+3h55Y9YjQAwq5l5glVeKxPWD+RpCPtUM0iAEIWKBweY3YnprXpvbbrizV3j
	 /Wyuz2blAAfq0bW5ToPrGhF2WPMBUChhY8IyIyC7CKM53eUus0/5YuxwQ+Iw/dhvU+
	 kYU9qtrWm5jjsGiW4JduGK6N4l/16ooNax7dTQcbBc0bVEu0QLdUdcVIw1hhnftm4E
	 85tLBCUggayjMSvENxpK3eKworB7bZXfJabu/cHQVj+OBxHm64Ivd52BvJRyrKKf0X
	 fCZHbZ6831iDvNpbjuigzGBdOUVq8qoYF7k8lyg7hWXVOtTg5S42RGVp8cfoHqUNT+
	 POp60lSXycP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5052AC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492745332.4920.14099982772553661633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5093c499e53273a52544376104d3484cac383c67b81f88cc3781e83878656bc1
Date: Tue, 04 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664927453
