Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54882372
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661060452;
	h=To:Subject:From:Message-Id:Date;
	bh=5RgxQ62jFa0IAwG/oQKs2lBxI1VEFGPlH8XtVqsLAic=;
	b=Y8nKULQ0qX0Si4LE6zEtPrH7cCvyZSGGmEbUDAi1Cw4c2Exf1S2pgqqi3gjQPH9o
	wrW84XcgI6EtJM8aQMiV/wmdYf4ZZuaF2b8Amji5YfTvPC0t8Obtoy4zuBUiGXbOf7v
	7wGPYUhlYj/5d26m6r+GHIKla4xnWkNUJXjmftvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661060452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5RgxQ62jFa0IAwG/oQKs2lBxI1VEFGPlH8XtVqsLAic=;
	b=kI8rntEkV2XMrU2R2t0G6jiTmL5NiGicIVDmUydHK+lkqvwW9+B58Z0WH09uDOLk
	fLbrzZks4tKzbRJgxMAa8Phw2ZCrLVgiW2+j4DJLk+ktgfiuTpnAGzbVTD5xQE4Yf+E
	NKBI50MPH5GXjWgRjmMIk6RD+3MH2Fk3FPbjU2xg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182beeb10ff-8933f8bd-0044-4a9d-ab9b-a8b6de55c7fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8b5d13ecbcf0d86ff28532219f6a026cf6215af1de546a70cb11ad51b16acec
Date: Sun, 21 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661060452
