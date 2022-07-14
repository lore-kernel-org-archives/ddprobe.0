Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C892F25
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 09:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657792012;
	h=To:Subject:From:Message-Id:Date;
	bh=NYfCrVeY+30lhCDM6SOi7eEmpgwmNuiuki5efbn6wC4=;
	b=FDD7pB9dHKvDkXwZ+yHGtp/zupMkQ+prQDGTYEYW2QdnDsSUpNeTAhns/ejFNIsW
	HrS9hNVLTvJyBZq7Ed6XnyrygcAUhiVlBwIobpAZl78WXedRgvZvT42Wv7bVtDsioqm
	aaEp2YubakemTsplRqm11Bhgshkk+i9DeXQq8oLk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657792012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NYfCrVeY+30lhCDM6SOi7eEmpgwmNuiuki5efbn6wC4=;
	b=AP16tcjBYed//F1iNvxE6beV0HqS2QjQxpJp81YuAOVBGYLAEvXWeJ7HLVJu53ww
	Qnr+4D0Zs3ZGR0N+jXy4iRCtB/O3QHnVKWre6NaFfoG6DwblX0RBIp1taOVpXLg1Pbt
	eWR3rG4qwh4M8beVJVsyVF7zmYVabWBlevYFxUGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fc1a9ff4-523056de-079b-4662-ae61-e1a9b0822a10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65476de2c1525b0aa85c27ee4fad8245adaf10aaf238bb7a3f2010f866dec5b2
Date: Thu, 14 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657792012
