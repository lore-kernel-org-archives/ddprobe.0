Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571AB6101
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660945852;
	h=To:Subject:From:Message-Id:Date;
	bh=7/5h/NRyn1jd2ujQbBgevUwT1CXOjqRiFClqj6YGmS8=;
	b=VvnnDAd12QTMnxJyhOc2Himos9WQ/oBeP5Uc81rcreGmyTWIPGzTMrQLuszvIoc1
	Kb5s1v3CPZKlNSjZfbhz9hvhQOT0Hp4biO7YoXzTUGK4MC0gjgv+R77s3WVPqOw9gf2
	I3kQaw7mC7IC/hWJ0kWIn4KH2Io24eXCGzhkiPSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660945852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7/5h/NRyn1jd2ujQbBgevUwT1CXOjqRiFClqj6YGmS8=;
	b=fpL2xyXUUgMQLX7j8BIvyhvBmyGcRHSeTDOXxUrOgP+57B/n9oQuBPK2mPeRzIQT
	LiQTsC8FFfzkJn/VUKEMMragaYBZxsOcnzp3iZh09yp+Qs3iN6piHxEbg9En5dvrHT/
	Z455p5sK4LZ2/jXEXX0YfgW6ukvO3h7AV4ThMgVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8166877-2f8c7505-86c0-4749-9815-bb162adc1674-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f504a20863de35c9e480cda0bac9ad65da3cb2249b8246b02cf7095de82dc91
Date: Fri, 19 Aug 2022 21:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660945852
