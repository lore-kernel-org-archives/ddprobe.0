Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C76361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647043585;
	h=To:Subject:From:Message-Id:Date;
	bh=eRhrcsNZA7plnjKIomTP96kRrIUCY3lNlq860EXO9kU=;
	b=cfELTGBYjff1DARwavyRXZBaOK3PqKfRFOLlA4fwPKldlQ+yYqfdYlP69jfmuDJL
	Hyj68ms3P99FaRJ+gVzN5ZwrQJypZ9HycI8cqn2ds5MRA0YmowwfO174zI/RWkTMegn
	gniXHILesQqgQMTbVFZ9PRtch3PnO61eicxTu1SM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647043585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eRhrcsNZA7plnjKIomTP96kRrIUCY3lNlq860EXO9kU=;
	b=iLWeYpJpzW9te7NVIO9vcibyijMazW1ecoWlZ8j+n3Btwtb0vJAAkjYb0TPvyFiT
	PJLrRROWbUIGeAtmEruOq+a9DlpB92sfVK0XNriqtNhmLpxl3/G+oxVpw4O8jxW0Cvu
	0hEa90LfjiMuJR10cTnf8bwYTY4v/L/i7PI7astA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b72a2ec-dbfb4c4a-0e23-4b27-9173-d7dbdafb2de2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee81c887d91f33c8da51bc89e5b08c1599792d045308112060219046564da58d
Date: Sat, 12 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647043584
