Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724E528EB
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 12:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651409999;
	h=To:Subject:From:Message-Id:Date;
	bh=HUcyP7qtDfubikqMHSfA/+C5e7wgaOV0Chnx5ceMVrE=;
	b=gLgv11T0CvAz1/ri1VBIdS0FRP9LmtpQkbtyTlJPP1NcFQU4VoQuWcu5luamJ3MP
	DK5XLuE8WkJgFhjuMERbN9hcSGjXgjVU+8nyPUsbWdmfNKkoj47/7v7ZwbE7jrczl2K
	NCb1kdi3Y1zgbcau3+bMgY5Qt8y70DDCkoDBL58I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651409999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HUcyP7qtDfubikqMHSfA/+C5e7wgaOV0Chnx5ceMVrE=;
	b=BuaUHhf1hnRueFx+5205+0DX1SHwZtDICnIUILVTxpOYSFt3jZLcciNrEFQvz9tT
	nSjzX9CKNyy6YhK5YWgKYStKjxR8pl+CjSrQmncgrnCE3zVkuRTWZIW2ftsX6zycDzo
	ymfa8uxeGCvA44Em24BpNNIYutxGkvr3IsOvChNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807fb4d1d0-f77484d5-af78-47ad-bfae-2852d8cebb39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a8b2bc0a2177329be30cd2b5d9776fe75b76fd2ec5648a9b8bc12a974f5bd80
Date: Sun, 1 May 2022 12:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651409998
