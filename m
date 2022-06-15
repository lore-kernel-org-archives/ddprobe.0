Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D365F7C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 08:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655281619;
	h=To:Subject:From:Message-Id:Date;
	bh=hqrM6bDjA50Miy6Ew2puBx4wEOSs9rpaYUo1MiAiEiw=;
	b=dI3xPe1xvQg6Bnd+y54eKXLEJL83ohVeYqN03occz1cvL4GETgHGXd7SlY+M0U3Y
	hHpYGy05In42RVIL0utlpRYnx0l4CFSu6T67zkxYf2yM175Xkt7u0EfP47o698QirqF
	+cXIqH3z7myUKibWgO6wC1S1F04nr7ps/Y1bEHNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655281619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hqrM6bDjA50Miy6Ew2puBx4wEOSs9rpaYUo1MiAiEiw=;
	b=X7xHk1mnjeZI6MBrB6ORXNmYuX6KBdTwAac1taSRHWkQiYisngtWoP/BP3WJMsPA
	Zwd22XnCnSX35EqhH7nKkmwg1I4DzOLDMIubLAvHFO+kEouaXk1XD8pREGG2RkYhuoq
	UaX5q37lhYJq61+b2bYGVyF70V1hCioXViBgPs5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018166791120-bd473f36-f87d-42f5-b988-1d8eff18d365-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12cdf1e8f2bda5292d072a6c391bd9a5c1676a84e13e43e129dafe433d1f5abe
Date: Wed, 15 Jun 2022 08:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655281619
