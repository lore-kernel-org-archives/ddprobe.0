Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27E3361
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BFEC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671973287;
	bh=jD8DxVDIyXrSrFu9sRONvCcAew6dSS1/UorUJ8+84WU=;
	h=To:Subject:From:Date:From;
	b=onDIOWWS5ycvtUGFX4pr1DKw0kd1fy26lPNR4lNcWmzxhoj6Uyq2UihBuPpaT4olV
	 lfj/JffP2vx9veK29MBPj3Lusd3ISFvju/dhwZkLKGtM9IlArzQ38XU2xPNaXQjJa8
	 EU/uytXadjbsyaP0b8lWcG81xCOKlLrbwa/5QagJYNeEPa7wQYZxcKDdAfCFwpC4Kf
	 HuAkgSY+e6a4pCvnFeOfGyCVQ/JLXI+D6Q7GZ+hJG6R/OlqiCglkRbTaOOw/H7w9ot
	 fBe0GzyMyMGG+mDQz+AJrFK4XwSiewmECEgk3ySzRlzIaQu4QkvbpV5vqzQzvlKpXT
	 k3ZhtYzjtBMHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8490EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167197328746.15462.1667190990104871063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d672486413bf818bd63fa62313ba891f5deada31ebed693e5dc711981843e2
Date: Sun, 25 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671973287
