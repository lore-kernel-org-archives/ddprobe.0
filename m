Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BB1258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647804984;
	h=To:Subject:From:Message-Id:Date;
	bh=CSYaasdLGAn/Nls1TflfiOevq3+mg95npfbEvSo0DXg=;
	b=NmPqxLbZPAzD1M4zpAVYn0m+GWTTdn1JKyYjV0kiuNLeqpaUhNbiwQczJS0r4CSP
	4na+fYnAaJQKfbbBnb4jOG/WCFrLELVOsdL039w403Schy4/P5boKMPFEF9xLo7Iyjc
	q2iOjt9GtV7p/kAsWVNOMnflRosbpSHAJh2ST/ag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647804984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CSYaasdLGAn/Nls1TflfiOevq3+mg95npfbEvSo0DXg=;
	b=TVIKrhU2id20qwD916n3XuHfkXtHEQkYsLklPOtChw65/I5Oj/UivNbOElQKbm1F
	mVdHMi3/V/nLISeYfjH8zwhHSOFP3m+BisTF4g9nHmnrUV648M7+T12H3KgqIFH53Dz
	ONI/7b0hkPgK1i+HfJ9tyiXUW9pCCL1NyVYhwIL8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8d4ad7c-32df44b8-7970-47d4-967f-6c64c71f5a6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b2317d74816b968ce46f0c4004b6b7fc96437c49b0b6f875561fc28aabcab25
Date: Sun, 20 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647804984
