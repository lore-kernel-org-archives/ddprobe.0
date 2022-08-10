Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9178333C1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660162852;
	h=To:Subject:From:Message-Id:Date;
	bh=BFGjDOx22ysFk4uGry9dMkZa/wtBl6l6R7z9NCdNh6A=;
	b=V8T0dwWLYg/hbkqodnXkaFqrUc4SOBxlDZ72BQXS7eGPbe+F00+ebgxOJDhpClFH
	+k4L2kKeLheJwV7E1smnRYrRZT4uZGqTiv65rPqfux7891Z7vh8oSARVZ27zry2qKmt
	5azE+igYxEoKiL/1ydiQpVCpn7uJmd6wj9yCOeKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660162852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BFGjDOx22ysFk4uGry9dMkZa/wtBl6l6R7z9NCdNh6A=;
	b=dsJ2YPsoDSXdbTsSkzcAHmFwQBivl+pB3e8Q6O4anZ4i3iRvzAAhgw7TFdrQB3Nn
	u0vgrq0vhnPpeENMbtiJYP7r3Dg+UkV9qaGwPRKAXrnhEJFD9fqLMSKNr/defWXATFI
	iJeeyhHJO5ZckMZqEZFZiTDlgPy5KJn+EHuxIZD4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182896ac6bd-4d5612c2-704f-4009-a520-b61ef820fe46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a27a26edcb65cec5be699d0227c25b7b12c33c4f1b171d3e9dedefae1af9d59b
Date: Wed, 10 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660162852
