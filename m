Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1E155A7
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645298485;
	h=To:Subject:From:Message-Id:Date;
	bh=yLzcOYJE3OvWLotpw8XgndZ6OjmdOigklFidIwcQ32A=;
	b=ZTWSH2ZPk+Hh5x0iIg1GSpHq7zbJATwDsQwNLMJbvmSS9hABAImUKOv36OOwe54R
	6aMYS8mOSMnFPkFaCN6EogMjYOCgMKuuJo9X9Pm+7uAuDbmCvptL9FX9zJN6Ahi+Th/
	W8GanbaI27O1CmNb8ZM6/VmtJTEUO2RxfXmuTvTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645298485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yLzcOYJE3OvWLotpw8XgndZ6OjmdOigklFidIwcQ32A=;
	b=C61ZBIzhxG4d4/B7VGzA/evwbgRoaovtCXwzQF7J3CicwoySZMlIv8WmFpDdq4Eu
	5qskHvLlKJJIWpz4PKj7Y+Nl2G4NMTpd/mRko5vwwybneyrYpgI2NKq4QXRoYRFnaFI
	H/qOEVT28I8/LRvcND+vP4ImaXOh5XFYTIZ1jpis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f136e864a-f23b943b-bb99-43fb-86e4-56810920595b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b7ffd357cde07d73c2b604351a4b154641542f8052dae7e60807816cef15504
Date: Sat, 19 Feb 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645298484
