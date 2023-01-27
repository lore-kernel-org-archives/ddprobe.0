Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ADB10F2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 03:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E93D9C4339B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 03:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674789785;
	bh=i0PUaE2lWyQcpNNF5oxee+cxl2DCjpu5oM9SUlKbwf0=;
	h=To:Subject:From:Date:From;
	b=ozkU7Qk5NgjPM3+lt9SL3kLzdS73rE30Rdkap92L6ZNVIz3KLsvatY6XOoAdR0W8P
	 QqDad/hp5cMY/yUX+XtPCBzVa4em3f2R/EPF5KsySMiy3uvtKUkODdwf5TFSbXwti2
	 UmCSzhvAdN3wlEaA7gjIf09h3OBhqZHBwm5DnYk9TGpzoADBivmNrEp6k1Lt6aar7k
	 U5Z2QcV6xNaNnGgiUwTalmRNVTJVPLq0QedoW0WwZoB0NMt96Bi/zkep2Pe9XDCmD5
	 qXgeuTNkgOff9CJlYKEkgyvlRgmyxpVfKRgFyyw8cWxtmhuPWbyMluZoEXHpgTRLaJ
	 9PZR9K6cE2kbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCFB6C05027
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 03:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167478978579.28052.12085468948865385783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cc6e72726b05543aeae7d257f08732debb4a543833da4837ef73088cef76b0
Date: Fri, 27 Jan 2023 03:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674789785
