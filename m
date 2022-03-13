Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED552F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647198385;
	h=To:Subject:From:Message-Id:Date;
	bh=Zo91L7vWVJ9S1QDe8/UTmbfYRY1wVPwROwCbATjyl0Y=;
	b=Uxqtc4H/ojv+MBJt2NrITqIR3uhsB5NEeQbQyjBxtqii3BNhRgE4InGJM/1PFio8
	OC29fZNk4JymvlhEb0MLqqOEbfVip8Y3t8cqWrqTfGQjFrZRy/+or7uRGlf89mKVcdx
	jJe4DdthxgsuVoGwtxn1VAM1G9cUUfoYghjbOneY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647198385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zo91L7vWVJ9S1QDe8/UTmbfYRY1wVPwROwCbATjyl0Y=;
	b=ZmShsWWL1oMQ6O+/Y3/yJmvFpsSpQPbO3AiTVnTEYY8W6MSv0xea5lJ/ENK9PaVf
	fAOQ6n2xhHqpERMQwdChjwWmsqIVvhJZxBaSIHs2XpRYShbPd4ATHNQzwEoQ1hzfoGS
	sUOIXvNVgPKy+hHj8AHCM7Kmq3gKYJUCeUAatR1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84acb273-126d006c-c45c-4e63-9dfa-70e12fbdb468-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddce8826d1b225754082941b2909804ff88d520f304ab52a43902b62613145a3
Date: Sun, 13 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647198384
