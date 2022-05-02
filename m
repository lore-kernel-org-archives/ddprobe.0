Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6993212
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 20:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651525198;
	h=To:Subject:From:Message-Id:Date;
	bh=QiskrvyNuw/Mp76bfO9O1Ahzh+PZldORtvZ105kIcY0=;
	b=Lw0Nv4KqI92Y2BLZPNgyZ2ErkTV83EH76Zq3n8NHRCTBQ0nOtlTCNQtdH5VLJXys
	xI1swHZQw5PrnmtovAkr4i35J+bEX6fwnsqlH7qPxwIxWJVBQGswe+/mTZt62kongOp
	bU+QDrHa8DIq5tAlRoLLL1xuNAgbFFZ9m4JEL2ns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651525198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QiskrvyNuw/Mp76bfO9O1Ahzh+PZldORtvZ105kIcY0=;
	b=jNjAfuA5+lM+9Eglt7q51kg5Akiw8MXhMFxy36oGR4FI2flvD/TiyGE07L+C+KaU
	UJy5xf5I2dLnoLk5I9rqCqybh4m1eN5qwtf9jfxwjcrZbb3vidokHeJ/3SA9d7lEcgf
	Z7kvcMjw2yxOfu3KGbLcWt1z/OrYfOLQashfOvzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808692a18d-b021ba12-bfad-4abb-9de4-85142d8006d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dffe7c580f1314d522ae3550c8dd8109460386901643f6f459c7609ac366c63
Date: Mon, 2 May 2022 20:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651525198
