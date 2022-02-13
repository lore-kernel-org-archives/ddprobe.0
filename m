Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8875642
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644794432;
	h=To:Subject:From:Message-Id:Date;
	bh=LQSOXox5n+192SaqxMv/Vy91T72aFftBX+QkOQZRe2c=;
	b=EN8yRwTtNVRGO4rEGA78uDFoo+RncRjVoQr/o8BLrHbg1HPV+PSqo/o20u+uxjmx
	VYMRNakn0WZJOL5woY/+8gNp9U0P8h8+zoKhYiaJKyLcPYcBpz2P4h6tFviRqez8bSe
	CQBBNhHuVi3/KUZcB2fLvNzjiS6qR8uW/ZfV1ZLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644794432;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LQSOXox5n+192SaqxMv/Vy91T72aFftBX+QkOQZRe2c=;
	b=b84YvANVDnvEs5NcETO5ojoHvg5C27hHGf41lA6/zmHb+CKMWecia3SXp8z0aiEh
	Ig/JqQUcCQC6v+a7WiFcczJYrdFLOoMNAeX9IDT0AFLBojTeDLd2yyWdVDOVEzpQgYI
	2QLzkYnmwo9hYvfLsncNabr+goeEjneGF7euddqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5634ca5-8b6af6a3-c9cb-407f-bcb5-cfc9a8dccc57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10972360d94c230e6a10855efd2a1bdcebd1dcb126f205cb25ada4482e8398e2
Date: Sun, 13 Feb 2022 23:20:32 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644794432
