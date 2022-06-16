Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AC77E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 02:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655346479;
	h=To:Subject:From:Message-Id:Date;
	bh=vNAf+KAXcQ2JKyfCrv6HLhcCQhJtBaOx8vccajmFj84=;
	b=K7jlE4SJFy9u8L9gW256IiHt4DnyenCl6/ULeurHbYuyyJcuB9srwRgbWe9zXpk3
	FRAAarRaFP2ciBT+avj3MzT1wxb8M5rPQihJDxi8pjYVAtoTlSWgp0T/PyGSInTA/Y1
	sFQzIz2ysiMKFbWIO6AbL1qMNN8xyVhixmcMs54E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655346479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vNAf+KAXcQ2JKyfCrv6HLhcCQhJtBaOx8vccajmFj84=;
	b=SkrVEImGyoTHNaKG2nggFWEhYPL/ZZpTX9uibG70Q7FdK4i8Frh8QCyN3WXEBeBd
	lVpCLxrAwnDO6mVSTDDzQIacVO/Z9j/UeQdBVgXgcgJJkpIqtTY4b4AYs8gMOssbdtJ
	V8psyO/1SVKnVmo3Gyeuv5+JvPHppSiXk4hlknU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816a56c088-9db946f2-c4e4-4d0e-a8bc-824794c97c97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6958116e1222b42a8d3cd77abf8fa322d5065966239a81a6b83997448dc77d79
Date: Thu, 16 Jun 2022 02:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655346479
