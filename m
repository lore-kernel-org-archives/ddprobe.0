Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7B4A40
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647225684;
	h=To:Subject:From:Message-Id:Date;
	bh=cDh27OxfJA73hBoEGvf/DyR4bmldGTsWhp5UWnxkPb8=;
	b=knYrWMNhXp8rhMrqsZ5wmtF8JZQ3EDcQAzI4O6FV1k6/igjy8TmR38VD6we0KFq5
	lYDfKhsZqFkI/nB1ups5RStkQjICWLSPzM3dEVVSu9cgCantNEXyQYn+SlxucvliBTD
	W+9/WdNRAtcZfL4flvwFB3+aGF0CsJV5IJbZttLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647225684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cDh27OxfJA73hBoEGvf/DyR4bmldGTsWhp5UWnxkPb8=;
	b=KOU3cGxZA/3fDa7umxCHwCjpqdswC+ZAO65MzuhZHywP+m1nOj2MeTd+uaL3Ogrh
	flc6xRVFpTC54BDG90tWb7g4PxEUdPI6rqiSQBlkP+2Et2qadHO/Q+AM6jgQUZpxH3J
	cebh+t/uM1tiFffsniHybXmFo5+PMGDr73Whimvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f864d4310-c103a3ce-3b39-4b2d-bcb2-f7762d76ea5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 537b8ba4d3fe082be88999a57f76adbe3b2959d589f4cb253632ad4afd301ab7
Date: Mon, 14 Mar 2022 02:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647225684
