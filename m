Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF792F25
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 09:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655459579;
	h=To:Subject:From:Message-Id:Date;
	bh=uQc6cGM6TNv3vmcN+y4XlLLUp4DogNzIciT10DSCGlI=;
	b=Nelw4KFqlkHjRv8beEgeJ9kx5paJTMr6kDSSYKBm9sn3eygo9H02kMGmAviNYACo
	Cik/KfXburVbQ9GzcasIY7Wm5O44QY9Y/DJU9L7gV+UGkUrdO/RjWVHsNjKmxRt9Pdn
	tMXoPcuDFN8l49NkZbKy5htLj3womTQ9GK/JRIzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655459579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uQc6cGM6TNv3vmcN+y4XlLLUp4DogNzIciT10DSCGlI=;
	b=bX0UUj1RHa1BqftcboSWplcfKQHyW/t2RWiaAGORhLAja++XSANyuzFYcTaqcY1F
	kDI/FxKpn4kSkkwv570nHYNN6Lut0JBQiU1mKWgj+VC+wrPjVWy7Xb9I5vmwYOzGDP8
	NVZtrUuGUrGZYKmMpf50iWuc6Y4btSZ3zNAhgyjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171148565-456145f6-df18-45fa-8d49-e857332634d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11f0f71ccf821d8bd2d551884e6087b3333150bb91da6273319ddc321b98f659
Date: Fri, 17 Jun 2022 09:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655459579
