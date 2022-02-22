Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F011A7E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645569685;
	h=To:Subject:From:Message-Id:Date;
	bh=Cmr6VtrmXvNVtmKD0ZaDiJAM4Z+EjqLiA9iBHylSX5k=;
	b=F9T7v+ZsWYwP712hMIRK07EXRvH1tTJ2bqjY61a6XnCNpSMBW1PWf/csOrebhuxj
	Q4wn9avhiy33hW5W7bRM01OdNcBjv32eIarqVFdJ9DxuBpj5S3rRqKBoqGraGqspbBx
	gnlUGztj4iRZtKoh13I9MJEtUGVZumcuyLiVDbIQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645569685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cmr6VtrmXvNVtmKD0ZaDiJAM4Z+EjqLiA9iBHylSX5k=;
	b=lyyJ38JDdng7sx/OjgwdsDH/yegevwNIif0k8Efy/de3Wbgm25HYATtZrIfksWSQ
	EFo/rCenG3E0rSEmftqmcM9AteNABe0SzeI9ENT5EiUVgDVpzJ5AlZWZ7280fo3c7hJ
	l09zWf1C7D7zM8zE9MBtAdnBnyKnsbRIDBvNcicg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2398b56e-09d7220b-5d21-45ee-92d7-c46614df143e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 204ea31cd10f819efba3c85e073f1cf5b97bed108a02a9f6d24a194b5478f89d
Date: Tue, 22 Feb 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645569684
