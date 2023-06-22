Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A77B21085
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 23:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBBDC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687477988;
	bh=2V/ZlmFNVXxTgWAA+mAkbwP+KL/88tYoCTqrvV36fT8=;
	h=To:Subject:From:Date:From;
	b=sEcms8kGXCQhVHMx4tYQzacghMgPWwL2+KtrXDErSehh+4jttFOsmvzB65fe6xsYf
	 DOcpMJ0w+Wi9s9hu2GPAFa+F2HsAjWzoT0OkkH/jC3x8nw/oCT2Fct2LqPQVrJXtr6
	 TNO/d++M0Jt3op/yHth9cVOXRY8B0nDOpCrSK/QM9H6lGDQv9bhNN1raV9dit/W03L
	 uMxGrVJx5AM+XXNcAoxykd+Sdv9EbwchRTwwJiHcjP0QAfeiPiilj9UKyyjAfR9/vf
	 QzE0+PjBYppZRIcdtyu84vFPM9ZfbT/aPmlImBfXE5/pj4CfiLjAL0wbb2s0J23XNj
	 wAIkmKao64xQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE9CEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168747798868.30929.3202288060906315501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3a7220b83bdfd64071a65701ad5d5824450641701e9207430fa3b7fff7fde8
Date: Thu, 22 Jun 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687477988
