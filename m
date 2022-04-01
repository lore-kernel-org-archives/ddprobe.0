Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4761D7C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 03:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648784458;
	h=To:Subject:From:Message-Id:Date;
	bh=OHpY6LPbYMwcCNTtJ7noTazEvBC705zJnmGVjVbhvV0=;
	b=BLchKFoW/xozbnkr9kUdGBO9bbkfkktuGSbOILkg8yphXugW/O6HiryGUUu2D/OJ
	htwaIV6CqMEqZMlwfG+r9GfvcFXP8W+TK6MmGXz1OBJb0F0QxJTouLaqtfnAqE9C3+I
	hBVnORV8TZ5OhyC9QNIc2yBYFnlUA0diko9j1dvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648784458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OHpY6LPbYMwcCNTtJ7noTazEvBC705zJnmGVjVbhvV0=;
	b=dYsuKr3pTRdxw7QXWOuaHubKSSfdVkjWn5nTzz9+daNQYyd+/107BvCWqHP2WJc3
	UeDeBTCQmb95Rlc2HR43nfG7aRk/AGr9xyxfiXJ1Ur2KrZr9pyRa+XVaItgpKtcFjWQ
	GBy+VTznZ5ZlxIT/rh+AwsMzlcEz483RS2ySiGLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe3364215-96b5d0db-f828-49f9-ac55-b9b27a1dc214-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beec66ccba6cd11a1184d38c14b8e68a7617f3729eb21e0f28d3e8f920e54510
Date: Fri, 1 Apr 2022 03:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648784458
