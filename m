Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D561C23A4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 08:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650616318;
	h=To:Subject:From:Message-Id:Date;
	bh=JVm8taZFojyU17FCyXJ/GDiZSSbq+59A86bXYyt7ak4=;
	b=cyIvvjlc3+vto7OHakpZP5S2atTw5uclmVv8Bvo0OHdSzJ1BpKp9n97Ov913qBjj
	AgC2fWGBxLxqm8sNtb0wd4lnTXJllyoXhi1eUsPUN2svZJtpxz+vE7iSCeJTdy+hQFI
	YIOPPDvA70ealsyIunbRFo1X851H4A2ZWNRagsOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650616318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JVm8taZFojyU17FCyXJ/GDiZSSbq+59A86bXYyt7ak4=;
	b=QBZUYXg2/FtGbatV2w1RLCcqc5+IAvTTRCLBimpw/gZN6jPtk1Jg78PqwEWlRLDG
	ZpHwwwjD7WguMZkOQMjyIahh4uIMEemQCdqYMCcC1DlSazmStpBijOzSedZlwkcWQaH
	KKwNspaCO/kwklBxR6WJncKZ7m0ejERknQIgAy+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018050663933-8cccf6dd-ab48-4290-9e80-7f2a4b3424e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85b47a303a107848911e3085390609b3f45047bb26b54204d0cf7c7704c7e685
Date: Fri, 22 Apr 2022 08:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650616318
