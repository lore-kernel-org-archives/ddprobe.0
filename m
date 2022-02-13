Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38562642
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 22:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644792625;
	h=To:Subject:From:Message-Id:Date;
	bh=q7qGLSP48UxgLTbDNkvRSB4705eH8T/nhq7ZDqdRP80=;
	b=A5iYo3dRA3OyBljKIwH1oymNicz0cvI5PO2kFzPlnrUOtI1/sNiYo2Be15yPuP0l
	kfhyv4sonTFQalWmg2APY6PrH06lK/vVcORAowrMM9/DcI0nyIbjZxsyK7qzylM9tJE
	weisd28ZBmvq8mVliW0lgZPGOaXxnXUleT0nBJc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644792625;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q7qGLSP48UxgLTbDNkvRSB4705eH8T/nhq7ZDqdRP80=;
	b=g1aylhRWOQU8gXKF/MxmqTebX/i8b92SgdMXkFItx6Muas31lTQNPKW7wNf1pYA/
	C8HcDSu21ptwPoVbOqubDiTglR0Hih1xQ5ZTAzE1BcqAlQX58QOcVPtya5wU4jxS5Rz
	z3shqOIywZOxZF2+x1KKH5FdlTYnlST8yYLgvWEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef547b8ae-2925f2af-d27f-4c2d-b992-4ec424987f52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e4b68d6d1cc102634404242296372b61538666a8f43994d27981df8568b3aca
Date: Sun, 13 Feb 2022 22:50:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644792625
