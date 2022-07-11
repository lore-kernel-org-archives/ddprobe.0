Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AF12F2E
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657550212;
	h=To:Subject:From:Message-Id:Date;
	bh=mKkrkENFnn9kksm7ODmMh6QmppqZndB+TxkyHA1BBoA=;
	b=DaYQWrtlqhyo1wGrHy3WA6vjUS1D/G4Jvt2JqWKl+B74kTjTsH+I8CSUg7WPYvqJ
	WcmgfPlfi3JAUDTH7V7eV/tY1YjU39krxEKh7z+OvS04iGqvOWW7CL8RFNVd+CQJbDq
	AW5Axe48VA8HKlRxQF5t7LEOQFVUaXwcCT6KFePk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657550212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mKkrkENFnn9kksm7ODmMh6QmppqZndB+TxkyHA1BBoA=;
	b=WsyYRhLmnlEw75EyKXGA/XLAsKRlZEu2jdM480gSXCy6n983NCzLMkg+er0/oV/J
	Hl3GmvCLXhk9rhn6Q13NKbhFhJEwUdSoiIG6MmTe52R/3IgsMaNjkZ7KS5xwet+AvYu
	mQOvzdfmQjOQC1OqNtiVcvbVDqm/TTvXvWB+EVVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181edb10cbc-6332886a-98cf-47a3-b908-e856358d415c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0c8c7895ba0679ffae367185fb9974aac850b50f3823617f83f01d478cfafa4
Date: Mon, 11 Jul 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657550212
