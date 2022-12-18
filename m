Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66517E7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C783C433F0
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671336687;
	bh=J1zmM8gqdSShk0tbXMCtzQECGZ9ItJSm5ezBDOtrJPQ=;
	h=To:Subject:From:Date:From;
	b=VrSav4ezmIWxlHZ3lf8kqS/yMni5Pv90aD1WPciYDZXWa7HDNQUpdxtJ/j+i+U/0B
	 uHRCE1P6Hen+q3Qun8ZsaHKI5a7Y+dYOPFX/aN7BtmN9XFYGbrz0KFdzQX9tbLJsX0
	 mPsAooOXsL6HThNVapFyDZTI6qgt8z1qE/rqlRlxUeZXsoBR5knIMsWf+y74E3cv7j
	 EvmQvWVFOkeVchpjJ0nCxDwo9KTMneXaSAauX9bTT20JBC3NHOhEZ/JJia7MOzMv7c
	 Byc/rGqTO/FaIDYXwWBzn17ejZh7uOqVhCAhst24x2LuRad7EicqJDmkPSoqFHRMSg
	 k2q6ddt+TZF9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F07CC10F1E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133668744.14471.2904102696330239973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec4c5268c72d97a4052167b03c83bf0fac33b9c894bbec4dbf832ad644e508a
Date: Sun, 18 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671336687
