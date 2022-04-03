Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF041FDA
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 16:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649003938;
	h=To:Subject:From:Message-Id:Date;
	bh=a5YDc1uRL14BLhronxlTeOk2CHGmvZrb0NhUaJw5+lw=;
	b=OZP2ZjknXuYOLy3cL9P5oChooTL1hJD60ZXKybB7VYZLIAUK8aZgwu4VdXsSExOE
	1IoJVtpNdJ0/xZocMVSoHsvSGpd+1FqoxZ0tD9WBm2fJrH+73i6GUPRwKKN3peEd3rU
	9zvZpaTSKd425dnmxE88KgQ3qp/dRw2LaSGhuxe0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649003938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a5YDc1uRL14BLhronxlTeOk2CHGmvZrb0NhUaJw5+lw=;
	b=dZn0U4N7YxiT8+1g59rlWTMzy9K5hHFBUQbCWnVqnxnZxa9SzZXvLM8aug2GE5qS
	NaYpNJHG42rpfXz1RgYb6yY5SJAIddX50oDj1s7O+qa77sw1JCGWPk4LreePStCyO0V
	sQNsJUOexMNJOKbdSTL/jEUAVQjDqgd6NBxVwUmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff04b41d6-c84e50c3-52aa-47a6-b785-628fc40accd1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9166d09ac101f1d077c764e5fa64113dc92a2ecd4608cd3d2cb1ea3c02687912
Date: Sun, 3 Apr 2022 16:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649003938
