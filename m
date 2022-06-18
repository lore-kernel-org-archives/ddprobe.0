Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADB27B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 16:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655570039;
	h=To:Subject:From:Message-Id:Date;
	bh=BYTRYKPNuTzhHP4Hekg0C+NUOw8Ltyr1XyyP6WUCEyM=;
	b=kO4mt9Ubnh3/h5p5iSEVQBRH77Cb+LXAxi3rpHgJeN0aqEdL1WXdCt31NOr0xLkB
	IgQpp8dL0HxoIStZbXiDMBkjsAoYuPwVNQbvL2C8x6q6FJtl8ImfxKpDpD8m8+3fF/y
	mjwwNH6dV7FI5KrflN9edLgc74W9uLhiz80Rr8SM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655570039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BYTRYKPNuTzhHP4Hekg0C+NUOw8Ltyr1XyyP6WUCEyM=;
	b=j6Brg/LoZ6Dcn6c3uyiDvobmyQo6e/XBzKCqxuly+Z5TSGhzT6EXpAj35FK8h2PP
	cgr1qp6Xyz2632n4na84URmPqp/nP98+GixZqNl00mN7zu0Zm7CJCNW2HnTXL7sPg+b
	PPb2/9/EU0gioK+AkV3SZ3BB/KotzdAF555OGmOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177aa022d-5df73f5a-a361-4b11-a238-a8768566f9ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 315afadb2551ca9ae2df7cf1514f51761b808d7b66f11d2ba20c259f88d65785
Date: Sat, 18 Jun 2022 16:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655570039
