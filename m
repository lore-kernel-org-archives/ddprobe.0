Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7832C4C7E
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647616285;
	h=To:Subject:From:Message-Id:Date;
	bh=1xe/0uCEb9kFDpqPkdxGic4Y20FwpGObuTs8HopqtT8=;
	b=e7Yx3fF0neCRzst5Q5SzWZUYT1lBhRouEJaGteSi9bZ2zbkwdm8v3Tn4Mnlksz2i
	ob7JPsYWYMk3lKZtzhdkJusnyky1vlijHLGfmHKWpzBcid3HekzHuC5iJ6YzyknVmos
	lM3iwo6aIJpJvLIlL9afU9FE2CW8WTw0iwfJIZ6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647616285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1xe/0uCEb9kFDpqPkdxGic4Y20FwpGObuTs8HopqtT8=;
	b=Tor0K8A6kQeZZYaPGOBVUS/chATzm0zJJ0dbuvEXGvR8SWP2n3kGWd9ilZXFsZkE
	36AZzyjVBSR8OfsTqP2YjjPvl2aihkOizEOxt2Uy0Pfa0cy5nbEELQqAow8tFoY9+fD
	6NFv6KmKmB4jAmaQ4rkTGwhTp54LkDNTB3ysxWDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d9558bf-02b30af1-d2f8-4822-9794-3d29dfcba432-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1d86c80f10ec2e206c314e7d97f4c0ed1c3a7cfd7c81a9a8736b6cb6c566bd7
Date: Fri, 18 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647616284
