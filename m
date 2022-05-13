Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A52D29AB
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 12:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652443979;
	h=To:Subject:From:Message-Id:Date;
	bh=JcySWym8IDHFCgrTFgFQ+iYkZqrjDlh/VuWdH4IknMQ=;
	b=H9UK90USduX7tB+kKJB0JdAqCG4GmIl+5+WNc6Ufz7SYW8QFVP+9b/WCvXs3V/E5
	zn9uECU5rGmzISeJwuavSmVaawr/ZF+iSffkeFDfRm/CNvvwgLsROrfpKO3i8V8TuDv
	5TBeYZyBgwMT89GGR5dBrUOlLJNGP+NhQbXMWHXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652443979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JcySWym8IDHFCgrTFgFQ+iYkZqrjDlh/VuWdH4IknMQ=;
	b=AXdpEnVYV5wSQsAK4wdIgq6dZCLnooxYdUGR3K1qOH0Fq/xNP8jMAGOn9nCktIva
	d/RNbmwcOOkaLDfxY3I9FiikpRxV4UOFUFK2KUsZrQrIyZXHX/5mQZ0rbzlHhsmAA/+
	BgcFJSsrWleghEDg1VKa4NfW6VsUxs0tFipeMK2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd561e3f-d356105f-fd50-4bfa-a47d-9149e7ff31d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4ba6c4548e57522e8e0b36d33a5f9dbeb5c60b7a1552533849791414e6cc2de
Date: Fri, 13 May 2022 12:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652443979
