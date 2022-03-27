Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE93F3234
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 18:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648407358;
	h=To:Subject:From:Message-Id:Date;
	bh=nipPnfF/pmgwj6DCblSXminbmxXd9ZteB+WJ9Ft6ggI=;
	b=fJTVvwzZNhHbREpsoVXmP6nC4021gKwaMkkO/otWyc2JtkcCxSj4upH6co4K9hd4
	2Dc61PXGxmWYXoaPqwkDKeddVy2Hwwv3cnywEaS2QYRyOj6c9dhV/+nQ930XEPCqPXl
	ASc5avcB2jgspgjf3QyqTIDa4/gRFAlmMhrUz5+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648407358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nipPnfF/pmgwj6DCblSXminbmxXd9ZteB+WJ9Ft6ggI=;
	b=g9EZ5KgTO5xM8U9VoKDSuLmmmK72EfwVYZ8xv8nblgje1dB6rvzmoQhZuydjY/Cf
	siL8arBCqBFMzBdnbrotTV98Ouht4jROqCK4Vgkj4Z7cz1m/N0XWuspSCVoQy3Wtoro
	DY5xmCCCYpOu4/AX24T7yEvOLo8Rfw7t1tjnf2yc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fccbc2b71-ecd2a72f-3598-4da6-b7b1-5658424518e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 813221f24c86e319598a3cf60e26ac0f6c0882794982a25616f2d6af233fb8f4
Date: Sun, 27 Mar 2022 18:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648407358
