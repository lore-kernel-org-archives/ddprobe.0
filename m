Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50EA7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646969184;
	h=To:Subject:From:Message-Id:Date;
	bh=aA7jS8fdiA6tPzbmBeqYpXhgNypV+805Vx0sdGiCdqU=;
	b=RlldgaDxeJq72eXIUytprlNZ9ueuefcY3d6tB4UaH4CE2z2HIfQ9elXJ9BkLTOfz
	FWGNB/wCF+7fQr9qYiVQGUu2TBAmi9Lx2/LCUms2q/9zj6D62slP2zPQf4gmkwwD16l
	ChQhvPa547WaVlGrfDSaZ5W15d2KxMleliyjSJrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646969184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aA7jS8fdiA6tPzbmBeqYpXhgNypV+805Vx0sdGiCdqU=;
	b=I6szd4WYsm9yKoFzIj2OTw3VjPQnTYTVKegrIWncfjh1quyUEH0rAXPDIj0wNnkS
	pDxhkxSQinQSsaOohDWE4yKoFMm3Iiztk8hcm8FdTrXrpbFRr+1j+LKEzptJ2YQ/Nyy
	wbZ59KNW9cOXBm0scfFOzuZiLXVcaeCSJuEpSHUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7703621b-946ab6a7-56f5-4483-9315-a7dbb02b0fd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa28119a1b5b3687ec558eec09e6308204078e356e2e2667e09158a719d961c8
Date: Fri, 11 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646969184
