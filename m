Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534E057D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647879684;
	h=To:Subject:From:Message-Id:Date;
	bh=9TbmzLO3YUidHL0JTOaFdbs2Wx2R89rMUNFKHn1prDA=;
	b=b3xVj/Hdqu0h8zDJf0F0fjW2BblQ2rxx/PqSv/HfbDLBr58WaRf8oNfW1ZKJNJwB
	cRFAiaH8jJcN78wYjYQuCZzutWweiETysH3TzZPn+8qcFbgL/mPNz9TQ7EQhnBmETrR
	WuWU/vzmacHuY72GeSueChd6dovv9Z5iPpPwY1mA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647879684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9TbmzLO3YUidHL0JTOaFdbs2Wx2R89rMUNFKHn1prDA=;
	b=DRTp3XO/tcwWHbUBURplbPlOgDk8Tz8GO/lNC3uFjfFQEo2uO5YcAlAynXC68/Df
	o3sKfSV0cBdlvxMIwRRQw3l53jvsGpk8OJeYZWhhhR03qrGNU1w+w1sBX34NvxOhaO+
	DSmQwA4mAY+vtW/GE7ngNZ2r/VE+m79bc7jyNTw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad488279-cb8719c9-664c-40b4-872e-d1fd557664d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abeb706342d1f191d7afba71f4ef82bf4caf3f3e60b47f0962d9e7e0eca46c4c
Date: Mon, 21 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647879684
