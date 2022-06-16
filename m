Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DB023B6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 11:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655379839;
	h=To:Subject:From:Message-Id:Date;
	bh=7I/7W308JhDe3iDud9wgK08X1R4VYdAFXnP10ulkOIE=;
	b=AL2f5qIe2Qstuu2g40NmuKMB1L62llXCHA/1T573uynS5VrJNA0XpFp3HRYT/8AY
	RxHZzEqw5ViwmYpmBvnvtLUIjtcWLSZugzhRVNvdDznp66XCabxnGC6uOhZ+/KbXXTN
	/VBGphIxwYVuZKG5ITX2PViD/UmQXv96dvjDIy+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655379839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7I/7W308JhDe3iDud9wgK08X1R4VYdAFXnP10ulkOIE=;
	b=G6bZMKRG8CuLrYHSgLiUXxARsbniRExM7OaiLuV2uyIpfz+XNMXQkC+RBikmzKYK
	6oRfbvzTdAYFFC/8FWu15zkUsRt5YWIJ8xUYhFdDjwjv37hTfpN+TJBXGzeTZQs5bE8
	qzvUl70QIqZHrcCHnVDVQONZWcEKu9YC5XUaih0k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816c53c909-d55c8c8f-15e1-472d-8c15-5abced19fb14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05387570750391c42a27b87e3a5bc7c0f61325fbd2b56a902c3582e576727c27
Date: Thu, 16 Jun 2022 11:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655379839
