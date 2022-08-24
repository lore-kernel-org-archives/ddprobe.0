Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FC66716
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661362852;
	h=To:Subject:From:Message-Id:Date;
	bh=D7+Hbdd+J/nfOxIRAsa05AfCZytwnIRqxCsOCe8e2t0=;
	b=I2f845SZ319bIYr3sQeaByAVojzGj3ZT2KEJ7/EYIIqHTxnpndYVUah3Q0NO7fXo
	lW76WKizZWcoaOKThWkgLNpI1PPy2u0aMv9OoIZIBPBQeRKL1nngW7W5/DzlUMk1rSZ
	kYNed57K7gW/IskIUy9/dpJh/UAv4S3AbMysHBMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661362852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D7+Hbdd+J/nfOxIRAsa05AfCZytwnIRqxCsOCe8e2t0=;
	b=Qbj+6m3MAe/WlnHdWhMuUiyPUn7TAxWRIdxHuh48VbMXfaf73A8UQwaO4NsUBQ08
	iDRNCkNdr2SKlA9s8UuaCwkWHJ0uDdFuOlaQfQBzPs1JLCTUuyZPQu/+N94f3WiIzO/
	IyVEv9rzISfRN12GqAf1X+lAFyPVzrBRzWgxFATM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0f152fc-ca389b93-de60-4452-a00c-64c09bd43285-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5e797dcb3d5ccba6cde0a8b7f6e4ecbf80e7fa4d55ac64a13742f26511c6a32
Date: Wed, 24 Aug 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661362852
