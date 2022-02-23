Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D0D7A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 23:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645658485;
	h=To:Subject:From:Message-Id:Date;
	bh=DjkRp5wBYTFpdHtgskYaYZkB6Aod5O2yRyA0DW44qTE=;
	b=CgUAAirdjC5Yf7PwuoAvO3g20dP0XlQLeMkDtw4MxGJiOQK6a3vRqnD1SDz4lpsY
	d7HOM+IcJ3RLUzFITBtKMow1ssg/MRwjS5bFzxflUT5g8PaENFxypt+38NeEoMPs8uK
	UndcxCguyc6fjeN4+Oj10i5fDCDiLG2EzLOrvFPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645658485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DjkRp5wBYTFpdHtgskYaYZkB6Aod5O2yRyA0DW44qTE=;
	b=Dv+2XyU2mJwIE/G8ehQce+i1s8kwXz3qIZz/O0W0RdPyO9atu1k6EHwx+Wh1mZrF
	eJlThYtVgX0C4GJKFfiDtYatOT/oQY29YubDGmQl7gYcd7r/1vi4UnqS4VecXBIGZrE
	+IIqrX3MPZPeGhTzJvtDjps7felYIf3x+AMMO0S8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28e3b031-a9dc998d-3210-4ed4-a934-a750c96fdfaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bb9837644f32be3a6ad96e0dd0e7be4ca15fa8830472e585ce4da7ae38b8432
Date: Wed, 23 Feb 2022 23:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645658484
