Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF2723C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 01:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649034778;
	h=To:Subject:From:Message-Id:Date;
	bh=qxXYr/QBI3qqnveOIAljttTZsUz5tFnhv8WFiiVY46g=;
	b=GwopKwwBla6qNg5fdXA6o+dVl7K0r5J0X+82p8oFYWj7pwTVchPtejJETRcw0l2p
	zOOBmG+/PtsEXybJeCXCXeY5V/s7xkLH13qt5L+WEvPXt8UvrDq2UrzdCUaOHvwKhoU
	k+I52nsCO9GKhOemzBwIiHY/yNdg+UkPiRgbSTqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649034778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qxXYr/QBI3qqnveOIAljttTZsUz5tFnhv8WFiiVY46g=;
	b=BO2pEmGP9v+RlY27GeInOOoDVuxT6+oy/ZAMkwV1qYj1OViAdc5tftt/5vAJIoVd
	rgGtA2rRJABziMZ5IPh5ugzGK8UJwmSeu2d75jYMEQ3jP2wLf8zA5RhTlPDj7dWMxZb
	XUmXab+hf1BJu3rQuPfw/VX5e6hlayXbPm9dQCpY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff221d6b4-04de014b-1ce8-4f02-b419-f0e6a732bc1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3aea33583bcdfa28b767bab285fa3eab4d1a721142b8196208bed24a0a7a9ac
Date: Mon, 4 Apr 2022 01:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649034778
