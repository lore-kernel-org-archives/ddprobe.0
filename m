Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04333B41
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647461785;
	h=To:Subject:From:Message-Id:Date;
	bh=BGegjpLcI6QSYdehMQ/pMClqMHXxSUXLQ2Jpdd67Vpo=;
	b=hnZkGAmYskG2yZhYo0mPK/UzqPC/o44qZWXDjymAXj9q2En/Q/DmbLExnBXHh1x2
	I2yhFodXReJedBbt79AWlJ3lmuGHiVrJ5Bie0CulTYeL0G0Ftff1tbXqq/oKLS/WrBo
	qpx07Sd8qDdEl02ZqIHm75JFRM6Mni9A1BDPrpZw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647461785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BGegjpLcI6QSYdehMQ/pMClqMHXxSUXLQ2Jpdd67Vpo=;
	b=Ix8m8qvgc3buEUDBh/ubDDM8p2YmehJS69Z9rB1tZC/UObQ+YeNJlz0l0W1ekyLQ
	GPNFYl2Pn7eQoIsTDnyd5KozYZ8Tis7xuAWljCavZibDQhCVZtYgVSXD3Yx7iNjCbLI
	zui6cTpw48IdfJkojkqxVX4aEjV2OXE3AIl2noIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f945fdce9-849f6798-7a83-47c5-9289-7d9015f607e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 296bb2e437d7e38c75c99830de4d8c542f81a11c49a3aeb346903693e291cf0a
Date: Wed, 16 Mar 2022 20:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647461784
