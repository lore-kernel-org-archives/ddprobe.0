Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1BCF9D1
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 14:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC04C433C8
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 14:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695912968;
	bh=Lu65YCTmsBz6Q8DmpAhEebIqt/6IGe7SS/PhBZD5PDE=;
	h=To:Subject:From:Date:From;
	b=phWsflN4qkvzDWbWbJ6elymFH7fEWFgzx4TpP0J3PfsAEN0wQ3n8NCYTxIAYziSNm
	 uwp639wcj2RQbnsw6eF8cOV0HcEUVpGaUkoPMR0DzdCXowPfLuxCCUTiJ1JOPutUMu
	 03siuEwrqpeZh/QfK8/XaED9r7ocPMsp+EyX1moNr9d6EJfRtxwSMhCuZJunrF3Y0l
	 zliqB3ORDEJgcnob867e+svS9vZ5oEZ5EHg3lUoCR3euWmpXq23+k4w4IH1n2pQAee
	 XTRsqA3Xw/31oU10pzXfcdY5LndEXs3t7EIWg7isPvuOXxaJTSpbNP1C25FSay1jD+
	 CjapR12WKnNCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF47BE732DF
	for <ddprobe@lists.linux.dev>; Thu, 28 Sep 2023 14:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169591296877.15507.9275022988065261749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a517ceee97ce469c3f9d0530641a76a4f888b2e58ef7257edcf3de6d48e5edf
Date: Thu, 28 Sep 2023 14:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695912968
