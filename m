Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 917632F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660341652;
	h=To:Subject:From:Message-Id:Date;
	bh=hjldcFuvTGBrUltzn1I1WsvQnxFF1h4kaZTKAHFPbO4=;
	b=VsTJYNdLUVxecyl9+VnXxQQFmQteewYk9E0VqZaWY2fF7cyWwgvfaXkCVP2gBbSX
	h40eFAWhkJDXbPWpK3NL2APPkt0w0yk4EnU5YzZS4Cw2gwD3dDEg01wY6CIehh/8RtQ
	Dw7/u8oU8fi0X/DZ0ceZFx5p4neKteMQQGnIUeI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660341652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hjldcFuvTGBrUltzn1I1WsvQnxFF1h4kaZTKAHFPbO4=;
	b=iLYk+4tZNb1lTRI9uP9T+ZXEJk4IHSnqWHztozBDukbfsD/kQZ2wqfVrKNq2x5Gc
	wBrAaraPvrxO7y7lazIOZbGw1WSEkXvDt7670nQ3t1FNsH7zWlmJJUTaXpAYfZ884jX
	QjAwW7R8ZVIb09qdXPUPJrPCOhv02UqoPM04yjQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294130c59-8b5fdc35-1fba-43d3-b847-9fe8e6cfb922-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9ba9c3d0f29883f34e7cd23d3af46e7e7cb5a7d82253dc20316d652f0732732
Date: Fri, 12 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660341652
