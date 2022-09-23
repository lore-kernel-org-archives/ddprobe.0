Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD51E15B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A7EAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663894253;
	bh=lQdctLCLU5TuQ8rlIpH9O+FRaa/Lowc0dpExpRqDSv8=;
	h=To:Subject:From:Date:From;
	b=YtX5eYGpc77JMr4lWUgV2jY+hn1YgDX5Q7MnMfh0zL/qQRWx4xsqqM61w02h2d8QW
	 hPp9UjjHDvVPWy5HlQi7TDfCAnPaDN67EGwp5CK1E2124EZf8RSTAHGRadMc8DkcDs
	 TAIAE0JidnVg3wx4pqdlP7itjrqS4R68VxQoZlJ8Q8KVagKIswluzSfg62u6OHG1St
	 rKiFnEU6U2Yly3SvTb89wh5vpccKg9t/aGb3nq7wDOgRCFccEu6lLWPWsVPXvsc7bJ
	 tAIRqHskDdn8ibnhQTG57k8Aog7tQgPaClsZTPGzfLbvVzUs8QyUMqdD2z1zHb669F
	 Ad6X1+4G1d+Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAD0C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389425331.3526.8356522742503977599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45cb1f1ab9837475a7290d075918861015b4ebc458e2b8baa6fa1e6a57f9b065
Date: Fri, 23 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663894253
