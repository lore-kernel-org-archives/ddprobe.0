Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139F81842
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 03:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655956739;
	h=To:Subject:From:Message-Id:Date;
	bh=Yf10BzdqpYoJr7N0lnskOsYvxJMD2YGF4VPlmhM5pQM=;
	b=O59INLeQM5VwuiZK2bjrECrjL/cejvW/beATJF2YFss5T1rRYD2w0yqfQHZNltgD
	r6dZgGapfxOqIOoauulA2Y3yXGl9iS8+BqY3+r1iTbQzNqfFOlSgaq4UrvXT479pUZV
	XZc2MLmprmts1xXNpFwq50WqzNqHoR+cKGeK2OUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655956739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yf10BzdqpYoJr7N0lnskOsYvxJMD2YGF4VPlmhM5pQM=;
	b=AP4B5NSGyXzbPNTD+E/oI6Lo7XI8HEOCG06y3kLqdCZUwG24cqTBJXTmSD9593iJ
	y8v4omOeIh5RdLHZoMWIAOM3A7TP5nA5AYZEXFFd3QnTXD9qQYT39WCh6ATwUZnJYmK
	9rGtF18Ufc1/o5+p5JJcvZpsu3R8K6guvWiYU1Kc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818eb694cf-bcfd96dc-e98c-4a3a-8640-3fb8ab91605e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91b38adcf60ec917bfc103f376cb13d2bac538c7b885660d397fd0bc4477b6a3
Date: Thu, 23 Jun 2022 03:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655956739
