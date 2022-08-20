Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540DE20FF
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660993252;
	h=To:Subject:From:Message-Id:Date;
	bh=xwxIrOGIT0IllhtBorACDYJPNZl5fP7o7lpBttW3+Gs=;
	b=CkM9BW9NptUU3wzWO0uQN6qz/fB1jKeAEi2QQeQICk7OO03jhJ0SgUS540C5Dwb0
	jt3UIT0vcTEFjBMPIxuYz72RihJa1kMqq6Ysb8Ihcp6E3/O/00AVg8It98wONCEs5hT
	LIcKJxSThthBIEN4zap1tKsjHg6ugtNi56Jq2yt0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660993252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xwxIrOGIT0IllhtBorACDYJPNZl5fP7o7lpBttW3+Gs=;
	b=H3utkm8QPTEWYZHER4PoXeTcrvxnJN9gb6gP42ZOPhseJNR7Ld9e9zX4nrrgSNom
	W/UCyDI7NX+nJBafWnmUcTjhoA6yI639MXLOIXQlVHYqDoZ3lbTfu0RwNW7uUrusJdR
	DyHWINl8fQqfqPVEIf07zr/vtqAECV4BHdbklQb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bae9acec-f1b9c8df-3bd8-415c-b839-3294fc8221fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42ed361038f474e5a2da5e285c96d37adb620440f0de6cb6083889f6bdc43bbb
Date: Sat, 20 Aug 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660993252
