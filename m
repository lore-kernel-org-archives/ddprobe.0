Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766687A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659037252;
	h=To:Subject:From:Message-Id:Date;
	bh=R3IDHqhtIhzh6TgkRsiW8TBk4lY/iZEwhpQtDrQ2htw=;
	b=jCI5KCcmfPk/radvKY+I/fkWFB+G/WxrBats4UWfHzqAedjoS2OLCmU2tmFu2hiL
	qPqJ7hJDllFqoj2zvzNjJq0QPLF54RZ7/UArrhCKpK1RY8F+YFfm36lnI7DV7aNYxWj
	Zvd29AU6+6KYtZRw1kKefCJm2F5g0PprZ/wHKpHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659037252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R3IDHqhtIhzh6TgkRsiW8TBk4lY/iZEwhpQtDrQ2htw=;
	b=L9YJPCzOLpR2Dkn6KQHMOw7rOpTjs9G4dtiFgTVQn8ycYRnIBY6UL+e5WVKdNXiD
	aJEabXMUqH4ZdwjeRBx4aXjPTUcG40Bsf1LZGV6P/qgRaDadmyndkqpj9zyju9fDjnH
	2ysT9xGeJDMVOxXngz1AQwSe74I/zqOp7ThFPqpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246537bcf-7f45cf98-f33c-43b1-a2f4-3da11dc7cfbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16cf0fc6359a560d193cff9c876ede1192c5c41c9523b57fcdf033c66456e722
Date: Thu, 28 Jul 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659037252
