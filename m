Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBF97C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656032212;
	h=To:Subject:From:Message-Id:Date;
	bh=tp96cgKLhQnV0wBHEx/ovj9fnpGcPHj1t7ehwvu0QnY=;
	b=aZgcLwALIq2dMQhoUlsrxwIjcCU7EKPG2+tG8E90/Iv9QSz5ZTRlqbFwo6kgApuZ
	Hg/TbTAkvJBADNcwnGKyAVQZvBpjlMVfnY7WF/uZxc5oewI0c2FFY0oiBofpjknsYhs
	HQLyKUzlHzOO1NyjPFNfR5Zj0qs9sgquvmi5LIrk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656032212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tp96cgKLhQnV0wBHEx/ovj9fnpGcPHj1t7ehwvu0QnY=;
	b=U6vUQeV58Us6nsxt17ykwBU6HLABz3OpaNrxt92IhlaTkEuHseoEFd7+LDOy0MBF
	+lw9hwFRsCe/2UhnkngIhKar3q5TrmCKk1xLLvltXpDJe+eL79KxUjdeo1PHqHvz94I
	8a+E1Xuufls0t2HwhAfmEgtRYxefA3GGNHe/7LFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193363548-8df6b5c1-4809-4e85-ac0f-d725aef9d208-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 204bd92e62ffed95466ba1b21947245a916a3cad63886bfe153d8b643e44b43c
Date: Fri, 24 Jun 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656032212
