Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00AC27B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 11:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652183699;
	h=To:Subject:From:Message-Id:Date;
	bh=nd1vG82Us7mse+p+3wS1u/wOVzHzmaHq5NVow3pptGw=;
	b=RuACiyKgmP99t7FkDqgVjkTluaXiLv3nszitcP4R64p5qraTf8jcBkGQOspnvnPl
	KrWdcYdKLHeF5xPy3kr56ZHimddBQs3kw5/YGKCgP9ZzruRlIFNUynt8lDzZ5D8BZsM
	Jj6qFlrmeynfCIHV3BQY1kqGyvGaL3ovA1dsxPYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652183699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nd1vG82Us7mse+p+3wS1u/wOVzHzmaHq5NVow3pptGw=;
	b=GMs7fTHCNlGTFadVD4DzzPcJJ/KWg1dOXeMRCnzNOOCSDc+rqxMk4H3s/hZFdi4N
	65IVV9Hzj5BwSCg6Fdfpd/BokDPu9AZYKf8sQwbxvpNFYTOhYiC3FhrzkLkKRp1DCfi
	dYNKf7Coff+bhOMP+FrBHAfLxmkzycaemPJUuAZk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180add28f2f-1be6f9e3-9d7d-460e-b128-20e2950d6cf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5ab9b017fe3baf5fdf7fd2e456ea5e4f0cfae0e7f55e2ae631bfac018be19b5
Date: Tue, 10 May 2022 11:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652183699
