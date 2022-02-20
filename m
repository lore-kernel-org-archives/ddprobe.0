Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D367B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645374385;
	h=To:Subject:From:Message-Id:Date;
	bh=OpfWeRbh3fOxaxewRcDriAIjik5OdWItRQ/yVzroi8k=;
	b=mJh3jawV8g+7PFOqOyaRjityKPGVMsDYX69PAiWe3CYvNBN2vB5HYeZFZIlYJkgL
	iG/AhAlyK18vNs3vieDzg5whLffl7mxBAYxIFCCIV9PJekJzJRiGBB13jh83Cg9PL/8
	8jS5Kmt89i/ZzkMvkk1PB2nbaNIWadZhg6Vl4ELI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645374385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OpfWeRbh3fOxaxewRcDriAIjik5OdWItRQ/yVzroi8k=;
	b=RuS1bcVMsLchTDdasHNYU+lkn3A0QL70bB9rvVlo/ijWeswuDrAJEDW2e5qF+1fu
	cdql7OepHiLCTIQ+Rxw2PjxOkqzaT4jylaE+50e3EdAvNeex56leniBVzwu3Z69Ey1g
	7mzHR5jxxqb5uKWHY/oH6XcMUNDZojVHXMIBCDW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17f4aa71-febb7b03-e4d2-4541-8609-5009493c5373-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67188534a740106ec12ab0e9e2e41275cc605837ecd8cb6d0cee8ed6c40f32cd
Date: Sun, 20 Feb 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645374384
