Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C427A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 12:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655295839;
	h=To:Subject:From:Message-Id:Date;
	bh=ohLNxElUAaCMs8x8xDlVF/1mi7LsQssQ7u+C3RU3llE=;
	b=lBiWhv53CSU7kg9tO5wYHK9FL7SgaPBAC4dqXNzM7AImdxJ6Klcipu+Lp3tL0Gaf
	xD565D7fLqnQV9IzPQZFIoKFyMm4rITZQbsuZlh2hr1/vVC8oecY58Sz6IXt+P/U2an
	x7UUA8Xt0WYiRNQnON+psQ/h7uS51PAuDwuYwBmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655295839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ohLNxElUAaCMs8x8xDlVF/1mi7LsQssQ7u+C3RU3llE=;
	b=i5Ic6IAeHIUEYWECy1uTTWkW6/4eeQlbSLttTZ37r8FWo4Wj6i2dVsIAT1G9fXAI
	VaRuBIPboxTVDosGk7O2JZp6zBy7NPqGsNR94FU6zjHUzBOioT2up0jNlf/m9v7ldKz
	V2XEpCC/dnJKkGOfk2TUKSBEpYeCRzh3laR0bT3Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018167520c22-a0c22c7f-6564-424d-99af-d0ffbfecd147-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc7e6f97dda1f5787dfae68d8ad96fead1673db9c5c68d54a88bf83f596e3fda
Date: Wed, 15 Jun 2022 12:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655295839
