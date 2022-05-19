Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA0723D6
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 10:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652956979;
	h=To:Subject:From:Message-Id:Date;
	bh=1UOQRhLOQTJyWJSPrnafFta40Eu735PBlrKW1gvRGik=;
	b=Ym6dgBuwTh6FtKUB0Jc9OgrxYXq9MGNPOrIPfMumHRAtk93/rKIzopcw6qpvaB6A
	/ZcgFGrxjCsnKevAkz/n/jA2ymOq9lUqHbb0LrjKpaKkTKf3ekqSGrg0A6weker0Ti5
	0UPWydrhM2tB/GU58LO84CJdGzo7DzHgHSNn0ndY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652956979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1UOQRhLOQTJyWJSPrnafFta40Eu735PBlrKW1gvRGik=;
	b=B9mJ5pTWj2KLbbd5uM0W0vRMxLw41t7aDVkhbXrL+Krfwfmkhq6O02VAQkY7UmRL
	wqy2/QfMzK6uTbcqXLOrVJoztXBc+desdiAYUeFuU1nCcEDnav6ihZDS8J6Jdkakc5u
	gH2fTT8eY4Y6KXsTplQ2QLrBsXO8nF+VrwA2HOtU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dbe9e019-bc248c85-37fa-42f1-b288-e4160d934ab2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d50743d9bedc2ba5fc764211aecfed1acafe746cb0098b8cb0eac5a822c7e54
Date: Thu, 19 May 2022 10:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652956979
