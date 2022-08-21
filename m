Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC5E7B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661111452;
	h=To:Subject:From:Message-Id:Date;
	bh=YCAdle36jJOKD/GnFN/GWidh6lOsw5utjF2QffG8S1Q=;
	b=KDwbsqtSAw0EKiroWKxFlvMe0fL9gEIkMmdTPbLWx0wTwfmqGe1fggj3lIK60aWr
	Es87JfpkXDE0Ue1SGM9KyyVV3OcWqjitGr6wumqeOaWuTZSLxmQ98xTF7oYHYNseaX+
	5FhzKKmyOw/HsbXSye8EndLINlFm397WIRa2XFDQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661111452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YCAdle36jJOKD/GnFN/GWidh6lOsw5utjF2QffG8S1Q=;
	b=kL6aM0kp73GubO0kT3o/UerGPy4WyycXGRazgGq7Lmwv6Xi+owmw5Yvymfe1HgYJ
	pRZE8u+HWWfimko2jX+rP0N2DliOcHqY+dIerBCRelVnckVTzK5eekhYmPsaPyysDQC
	z5XDhk/vwDMFLjMWqkkEpw3SQrmI5qsOp3OtSD7Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1f543b9-b2c9a7d2-c3bf-46bd-9f34-1ed93477386a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86ee3ea7735f0513c4050f82673673427da7313dc0e20bece51e75fa38bdaa07
Date: Sun, 21 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661111452
