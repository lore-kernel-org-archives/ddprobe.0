Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687857C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 08:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654762139;
	h=To:Subject:From:Message-Id:Date;
	bh=RJMrbple6OTeHERHXy1gCrWUZlhnw/6Ni6oZKkF2+4k=;
	b=S0V4Le7w6NvUZ7IMNUoZKJoH+sE95CBpArqZayZRo2rKmi1o/VZp9EMW3/koNzD4
	laJmD47Pb9bquhH+YXNYwRDVco3foqG1hDt1ElMI2QaGeZ04ZCdD7efsBkWhFhcg0zi
	ZbBxz5Q2OUCLH00AJH5GMrY9mcSNXs1Lh0c+5B5E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654762139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJMrbple6OTeHERHXy1gCrWUZlhnw/6Ni6oZKkF2+4k=;
	b=fNCxawDFziJqXWzNBCjZ718qpshyCPgv0pdmaDZoBCzhJkGLCDRt6JMxSa5/h9d1
	yMzJ5ZeFSuWlRE7AZ5MqWm28Kr506D6/hhBhSU+yEYE7Fady5Afzpsx+yVcdaduDpRg
	pCwvRCPtpnZ3O6cBg1Yi67bpZAcs1mJJyKemI3Ds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018147826e79-c2418e2c-92e8-45f0-8beb-b83bcbfc38a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca52128db48268a9f966001525b7ecbffe07b2a064c71d25c6269612e5d57987
Date: Thu, 9 Jun 2022 08:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654762139
