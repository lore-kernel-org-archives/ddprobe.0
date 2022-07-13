Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0550A15AC
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657676212;
	h=To:Subject:From:Message-Id:Date;
	bh=f+i9nmcoErm4YmEGEC0RytETwwHe0gT6T9YwyXKfC0w=;
	b=eWtNkdaEB0r0gWn2BubTZnexKi2g2cRoP6GOBmH0e/uztQrniFxGPtvhDCxVxzlC
	mN9ZhrlMIKH+V+SdTeVuBblosNXj0lJwLxFvBWOarjdT5O5OP4Q5Km5rniVIB2S9F91
	5h8HRHdEPkaDqBNbM2cLX1ksYg6oVh5CZuU68Ydc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657676212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f+i9nmcoErm4YmEGEC0RytETwwHe0gT6T9YwyXKfC0w=;
	b=BQcI+wez5kwkPaEEAVl5LS2O9KjoeMIQUVbG0GYtzzadFybG9Vtou0HjMcl/SpTd
	ts5eZoY82QildHt8jtIUcmNyvoX0yDQoD9BBXae1nRByiqlZHsICVafnwPOkKZsQxZ8
	GionTEXvR7ivZYDC14leei5h3WT8O8w2hSmtZJq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f533a854-61961214-b05d-4642-a905-adfc7eb038ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad533b249bab6e8fbb13114834423d54f19c390d1b3fdcf1f7909a04f03cb5dc
Date: Wed, 13 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657676212
