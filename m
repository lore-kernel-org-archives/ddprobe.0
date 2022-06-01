Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AD32562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 14:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654095419;
	h=To:Subject:From:Message-Id:Date;
	bh=FBGhFhbwjtSl1OEnrVG6HuNVfExovGdbxh1Cye2v10M=;
	b=Jasp2N94DooGvAaJ3xWtQ+c2j5vtuZYx+op9hqtIK6useqdwlqrv1SkKzJQZbo0A
	yQOlalPwTXm4B42Ox+aCLYih4NYnpCBhiZJ1Qfs+bc6aRp4iMBkKJtlZEULtd+iQdKQ
	/nSdOvzn+qZJ8jIyTgWTL2yhCyfl0RgGs7H1COZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654095419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FBGhFhbwjtSl1OEnrVG6HuNVfExovGdbxh1Cye2v10M=;
	b=TcpSgGr1h9OpOhsKDc4QX+Va8lhaM2vj8JmC9zGAdRuQzUm1rwRAC9P3SOL+Snnz
	UHIYH0LHwqT6NaRlfMRvjSdLgz7SPfjNQWqY88GgX0grEt2Po2h32NFjjSM7iK8Pe4J
	OtsppLE+W3W/88r1885fjsi5pvOhCAFsGr2NZTzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811fc51795-62354ab8-f171-400e-ae21-1555d260f6ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fddadf140adc8e93b9f4bb1a654696b6c6e4f64e4af7c3d9084568c7641dfe3f
Date: Wed, 1 Jun 2022 14:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654095419
