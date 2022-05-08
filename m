Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781AC1841
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 13:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652017378;
	h=To:Subject:From:Message-Id:Date;
	bh=JMDW/lInum02BXUaNEx6vcbtfgUyslK/gfLUkN3gHoU=;
	b=g4rlxawIeOF5/UeOTvGmL3+MaIiunP+mXnUa4JJrZDPZsSuUDBM8LYMhM6uYxwQr
	evw8YydvcdzfdGa9WmPBxHonxVuuZgyZGJiGE3t7sRQm3Cumzdk/0J5aZwYhgDm0yL0
	EYRQDbwWafi61qUJ7JUumrE+ZPa2XW495In1f/rQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652017378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JMDW/lInum02BXUaNEx6vcbtfgUyslK/gfLUkN3gHoU=;
	b=E1jPITkVmcz078mGQE9boHltaCjoklOWCvzY57HpRRneuTWeKA9NIjwxcOE12zKz
	TTisHL8vskDULR5weUmsCMDGl269jomF2dnzOLfs4YnqWQ03yeii/ZRd6b0hP6uhz1q
	M1U8lnFFQoM+ZCragD4fHXQ7XRWZ6VFn51lbR4p8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a3e8b3ff-311ebf76-cc92-4fa1-ae91-eae5e3f7d49a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6b9768ebd0a2f5f44144354856e873abeb29bc197d96c0a2feb4a0f0b80f923
Date: Sun, 8 May 2022 13:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652017378
