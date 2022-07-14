Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F50192
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657760212;
	h=To:Subject:From:Message-Id:Date;
	bh=8iSZGblmUAEw87QQRVQVUmfNKg9IOFuEGhXp1Do4zC0=;
	b=kFAXn/xBGE8n/cg+tkU0tdcCXGgBAunPDAUYyGOg4FfKT7Uzs9vcPsbt/2az74T2
	9pIxRXFt3Cuc4JvacDuqDiRDe1STKYjWvJ4c3TcPbWXrxLibLbVAwp+YriEijGzNHqr
	JOHKqUIN6UBhnrYzv17HvNy/xZ6IT0CrzzyQhtps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657760212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8iSZGblmUAEw87QQRVQVUmfNKg9IOFuEGhXp1Do4zC0=;
	b=AQ7+KK7D9ABBIyS/QH+b9vE2KhQ/s88xVKxMX0sh61jbA9RtR5cfSVfsAyV5hFvP
	9XgffBKNydCvJ+NCfO+p8q4Tng4ITx+fWaS5VDqwg2p+7OlwQ3Z7KvUziISyw7gCi0x
	Cwbovuv02qtqpCCzxcc25pqJe0flon5lgEYUGH04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa356594-92a3cf5f-16f8-492a-b204-1061dd7b82a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 529352d261e179e56111bf86d1a944fa6ad92534a1cd85110b5184cb75f2f3bb
Date: Thu, 14 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657760212
