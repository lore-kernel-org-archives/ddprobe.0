Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FCA441A
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7230DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664995853;
	bh=bdq31Ry6sRIw4wPIHO4araBe5tICBmjr7GHJaDBWQoY=;
	h=To:Subject:From:Date:From;
	b=BG0KypCprtQApmU4SQZubfX7+f6FatucpeHJY6l+TOfiOwyj7sJHNB10ufuttMpnw
	 E8nnW7kTkG9dlHo1L+Ow9uvIksakjr1VZzeVgtp2sBhexFm7Ixx79ZLTZKphwhrc9g
	 zo03QxaUpGBa+6WXXQEpKHUEsuYRPG4lZ7IN6PMQiGVS7GFPHn8dEyQfOGRou/RUqh
	 c1vUUhlprrVKpmS4WuFsVP9Pcpz8H+jEdD7tf5bFIzDhE8sexHBLOgrNiPTNxp1ZUB
	 FMYMgoLnqoTjvVootPr5hS41i0kB4pOvC3apwsHf0CAEChz3Eco+mV8sNGR6UOgtp5
	 ebZS9Q8qtYsMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DF6C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166499585332.3031.9861560694453851803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12f69e64504cb62c31d266746dae1ead056b95d6fc8d9596ca21d8a19b095ba
Date: Wed, 05 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664995853
