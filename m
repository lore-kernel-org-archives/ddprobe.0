Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A054A9F
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647553284;
	h=To:Subject:From:Message-Id:Date;
	bh=jP5a49A5bavwWeyP7INnbVrSApUdHl+dLN1OEl8Dupk=;
	b=GjE9W3hAbr6gi+xzGoCHdVYWPRpjkInVYPP2h/vyiTKREcr7+KJj6NUAui38la8m
	dVgUW4QoKP/uac0bStH4whJl7X5iKZSeHvWd4p7iJ5d2MVXXPjHm7Z/3h9NhMjxi5ec
	BA7SpzMW6tWZHzAW40cNqv50oBsgxMa+SHqYHZ/A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647553284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jP5a49A5bavwWeyP7INnbVrSApUdHl+dLN1OEl8Dupk=;
	b=ZhsW/ocy19kQvQtqNZeTHeeph7BDWvLPCWyp6XSPZl1teoWjJrqa6qlQ+al1nKiJ
	IEci11o6+c73TAeiHzidFNDylYbEvOSDL9xY+CAq1DL6mXIa/3v0c7NUVKNp9JSW2jy
	ucDj4LvXPD7F4aHPDdxd4r/7kuDY0EEkwEeLIcrc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99d40aca-ba017505-e73d-4560-af58-927751f45e21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c19992b55422c49df0ce901537af4340db24d8498352e2f7a39196440ef5014a
Date: Thu, 17 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647553284
