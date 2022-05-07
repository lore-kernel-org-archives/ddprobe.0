Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83400800
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 11:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651922278;
	h=To:Subject:From:Message-Id:Date;
	bh=tfXkyoK5fCQS5JHmznBsLT3vbmyhE6+jQ2AoAQ/qpuo=;
	b=hqHqjHuNXrQKtwNaFzEHAMrMLLedHSpqg+a4mxRG9HjuX9a38lEwBeX0CCXXCvYZ
	WqY++vlkPhs1OZ3kSRtsXSJEcX7FHS0pnT0OJhepeKtWCsVTCrLkP7056Zzxc2Yi8lQ
	rKMoLGmYJGcek2SM0bpVX3zcsPRN7i0fDUNtRtoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651922278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tfXkyoK5fCQS5JHmznBsLT3vbmyhE6+jQ2AoAQ/qpuo=;
	b=YXx+yRz7VzYiCdc1UX/rWpnvm70g+p6mMaMpEM/ncz8e3WXTsEzTsJanE6+t6O6F
	+jIj3UlxeFC02zxNYzai7j3Jt3dxeKBfYUpI2id91LRTcZ25XMJD/wi5ZpW2/7N7hBi
	4OCHZSb9KG73XL9bZQQ9TFalva8CeznlLiv+6g1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809e3d9776-42ebf41f-32ed-4e93-86aa-de6dd4f6e6b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49c46703bf7152576f090701566288000d0efe38cd672a005531922a592ff38d
Date: Sat, 7 May 2022 11:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651922278
