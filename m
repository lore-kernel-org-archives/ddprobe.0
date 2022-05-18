Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142371866
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 10:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652871059;
	h=To:Subject:From:Message-Id:Date;
	bh=4it4E0pIimywfmE7M72ui8FMUTAdJ+olJv3+H21n2j8=;
	b=KCXuVBjsVWGfpMECLVDEnJAE7+7YMGfVLUz0d1reuYcodrpFZOx5MqRoNlxDWgHJ
	dxaH35cHebgPcBrpairlS13MIPk7RPG1IksD/iCjS3EG9soPQ9RaZg7d3Jhc1KY4aIV
	EeTeCCWn15iobZ7oyJRzJDdXH+DXDeAd/eIErXMU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652871059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4it4E0pIimywfmE7M72ui8FMUTAdJ+olJv3+H21n2j8=;
	b=HvHZ8XgO6e+6U42EX5nuGl7KX2hlI8BTq6nqXQvkaHFIu5f/QzgsGr4//O236tlS
	fzUOoqVB40udNw5NEQ1Bg18pkvbFP8kn1YtIsi6ZWkCW46dnGhCGQjvA9YiaFA3onx8
	h6eESIlrNbxWwT6ZMMF+ADh0tpG4MW1o87QQLY30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d6cad77d-593969e7-90ef-4756-b2a4-b850e0a2cfd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2c01c6fb552061d86411e7f5c0da238a278cc77719dd5bd7b8d99948d9f22ae
Date: Wed, 18 May 2022 10:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652871059
