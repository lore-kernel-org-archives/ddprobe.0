Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E4C7D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 09:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644829832;
	h=To:Subject:From:Message-Id:Date;
	bh=pMBywmHDYsMdJYpJPWFR8s5MNLzL6mXvy+OgW9OvrTU=;
	b=iXhD+0UaTv75j70zjBtLFFJLmcja3VCug+PFdj13YU0PP23kNMqXDQ0xWYoRHU7L
	TTfX2hldEcwowwpDt3Wi2t74Gdu4ha4fOnqrHiUTkEn1gcu5he+WSZZEZTUnjkhXnSt
	Sm4lENea0Tjv5QZwLg6zOX21/7tl/TQyjid8OrTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644829832;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pMBywmHDYsMdJYpJPWFR8s5MNLzL6mXvy+OgW9OvrTU=;
	b=Yl0rYCtl0L04mvpXKiUK1F9nBDo0epDYuoU2MwzuyNQgZte9uGi6TFfcb4JT75X+
	XPsU4GdFBmBfM5o7YI2qoBmkkjUdLuGxEmQOICyMUlg/REqUSVy74Vm56AZnev2Ly2A
	YBCTSmnUadWYy7gVJRwCPJh578EH7DyABgcm5fZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef77f7361-927ab012-2417-4121-b521-e80a79c9c99d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59539faf3e793092e52c6e4bedfbf463c2ab1a22de7d60c60677e32325d34a78
Date: Mon, 14 Feb 2022 09:10:32 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644829831
