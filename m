Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07C8A3C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659686452;
	h=To:Subject:From:Message-Id:Date;
	bh=Q2FMCpcj45mFD7WYT4j4agDfLik+EfvWb0RXI3rKvc0=;
	b=TuFbhgBrOBXCYAMnqHuf20mtGuIOo1pAGD+DS9sNj0ye2yF0seLYr46nvUC5dptd
	kkMPjQHA4I/X+jkPU6tUq9+mJ9ep1B3h6AvnfGyk5EOqssmzSTbYp5JRnHPzp8VWY7b
	da6+eIdMIhTitk45tIiWGvMqqAOF5H1UEwETjb1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659686452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q2FMCpcj45mFD7WYT4j4agDfLik+EfvWb0RXI3rKvc0=;
	b=Z726VvKaGVCT8/sVn/RuNWQ8Dg2ppSXatkc05BmXD6PK+QxJkJIVBk7TcJmo8K+a
	46l1gOdfsL5zGrA29M0lFQRokCoUK+C991+neJnBAUKrT0G762hetCd3B0iEvTpHUTM
	QEH+MKo1orCxHiqU2siKP/6IHshm2O9HlW99rQpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826d057d8a-baff4acd-a543-41cd-a8f6-e077bce6760e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 194672be9a7df3c7217590cfa4daf2641a400faa0147b65a933d01f079662908
Date: Fri, 5 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659686452
