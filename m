Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CB67A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647126384;
	h=To:Subject:From:Message-Id:Date;
	bh=cqBbQJufCMqH+xFTdfkhavT5nWYn0VKcaUStozsd5zE=;
	b=dmCQbZIgBkjKYd8HMNyQW7YynzVjoF/7VkhkKaIcR2jKjG/Dv8R22+yvy12mCygt
	tTcBMzzuBJ2dzXLrK8GSVFlnlDhJTC+SQLwo4gcrTFwl1WDCv3WDjeUWSpVD8DfMrTb
	gbEwfhaD/p6NstnX0hw+zjf6a/rDwkcRd2PYzH1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647126384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cqBbQJufCMqH+xFTdfkhavT5nWYn0VKcaUStozsd5zE=;
	b=AL9LVvkXb5xrXe3kGHimQdvtsuDmmtMlCZP9h4A+pPqpeVPXbOQLiv3cymEa01/H
	S57XStei7iPK7MAl+jvWWNVEzrNrYlEbwk9OUopC+M0BQFusNb1Tf8DhkZY36tbMf/f
	u0WFtIP6A2K78EGyzwxQPNgXH1qwn++e/dBIbV3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8062105d-0f7bb50f-cfaf-4521-a7af-a28b5936aa02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd5a643b3afdd31416defd5a341edce485fcbb6df12edc7d239640be5453e9f4
Date: Sat, 12 Mar 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647126384
