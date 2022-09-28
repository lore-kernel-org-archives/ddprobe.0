Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32854C62
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F82C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664392853;
	bh=GJZmjvlDKTiEY3Hx7/ZSl4zLUddOwco92aqnlDYK2AQ=;
	h=To:Subject:From:Date:From;
	b=hCLm6fie0BWLK8RIqg1Cm5l37DnFMy2iZSko6MK6X5BeCbO+nYjRWJE/G+AxfgUGt
	 whxXG491/5d/rfw81c4LlbJUrDd3QC0XmLgfdUy3Bl7vHyCbNeubBwkf0Tsf3MQHSC
	 yzdKF/XW7iylKi4VhjllYoALkzdjyf9CKbR4EUw5p1VYRUdAc1uiw7qLL3ddcbhYSf
	 aOmsct5JTZ4PGZjn51uRyopCRcM+nPLMFv6SaOzY3Ousf7Xr3HBGNcOsrHr4RSqhnz
	 /siUfcXrdP7dkzURHQH+hExBFjgevsfgbFU4tdrbudlHaWGBikJrZsnEl/lQtYpB1/
	 ukEFQsDRMEGkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50213C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166439285332.7315.7598046329258476622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b97e26fc63b6c16015b0c707c36db0e8bf8991f2788fddc0ffae0b5445e29b
Date: Wed, 28 Sep 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664392853
