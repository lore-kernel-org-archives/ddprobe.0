Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B627A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646891784;
	h=To:Subject:From:Message-Id:Date;
	bh=jHYNQOuXD18/xCFpdfqC7pQ4OX7gOoCA4WGgFwzvdhU=;
	b=ZnPLbo3j68r3DO+qbP5EJn2S8Zswm7g8vehCOmE1N4n8XYP1VgjfEtvdlQA4ZsLC
	RxZbzwWHqTydAKcnfILbCnQwEuYSGpkXPLKJHA9v3sttdYn2BjpQfmOrF1ynws77prK
	GPd8xnedo/qvJ0GJktGz4aHiqQtnl5Ovefqayd1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646891784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jHYNQOuXD18/xCFpdfqC7pQ4OX7gOoCA4WGgFwzvdhU=;
	b=cBh0C04MLuDpfDZioeczzO6UIjQlPJAooQRWdsuKyDCbWoRGXrXcxC7jaYLUIu7V
	+Zl080R24DlCMaefYQObvXHxCsKqZwlM4GXT7EVOTmgZrh7utG/CRX+sgJ/yQSYaVV9
	k6AIVBmYSq3+oYcgf7iSk46W5gugy8p3uDci0ARA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72665a42-8db2cb77-467c-4025-9fe9-be4e62b59645-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a60117c1a39d78a269c0c0696319033e522410c313024d5f7a074900648dbc2
Date: Thu, 10 Mar 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646891784
