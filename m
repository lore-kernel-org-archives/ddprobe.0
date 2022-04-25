Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04D1E2562
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 14:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650897838;
	h=To:Subject:From:Message-Id:Date;
	bh=Gh0elqEmsndRTldfexV7vqwqUNdq9B/0TudAb0hOz0Q=;
	b=LP1uVf+3SKE/ybW8RCx2g6cNr4yFvtJr6+VWFMHaf3phbRHHcCFFwdGZ6fQwtgDW
	Zu7taQgDFSO60dThkPS3hBRMBZkp8iYt5Yl6iD22Jb/ka+M5FK3zyH2ob9nk6W293h+
	zHeTFUIELeWWp31eM76JXBU+KLP2Ci9DRGeOgR38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650897838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gh0elqEmsndRTldfexV7vqwqUNdq9B/0TudAb0hOz0Q=;
	b=d2geUoK0eT9ohLQB2IFaYDt8Kw/fkrLx8auKBIkl3gZ5xCXdL3hyGC94U/ASWNYX
	g1R3jQUM1U77JsuMiNmlfCnOM76rRfyR05TNrH1GujzS7OHKPvvxzgdHHDzB1cPdvZ3
	VbTAYnf3x6368/+M3mR/hbcm+3O/oyVeszYQoDsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180612de0e6-82b50bf6-a60e-400c-97cf-4eeb1b7ca099-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6c8289dc64527f60ca7de5ccf62a9c1112e6b0d73f9b7591253e45c790f1aa4
Date: Mon, 25 Apr 2022 14:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650897838
