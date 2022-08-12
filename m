Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F4C37A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660293052;
	h=To:Subject:From:Message-Id:Date;
	bh=U4LaCxtLlIQ7AK0NaoXd+YKpuaeqFHuGrypymmikukM=;
	b=IOjQEoQ/oHAWSiPCZGEDADMEFrjV8xU8Roj5isAxzQa6WSrkjqlInWMY6+R9QIMg
	TY0A8Gr6DcR8guOt5za5j7+PONNktHIIfw/EVKCslCyBbURLcbXH9L1sL8kYMdUXnpX
	QCvMOMRN8HwmjwsLlrK0MGFoXP8E1q0KBxx0tJnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660293052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U4LaCxtLlIQ7AK0NaoXd+YKpuaeqFHuGrypymmikukM=;
	b=Wv5YmQ5UkOPS1zTiQ2gcx2SGF8MYIPky4W6z/M4NnrgK7rE+K2VGE2kVThKEJU7c
	5bFi3K58kM2nYwPypbL9Y+jju9tLj9yOrF/l2/KTYysrRxoAfEBZWrvoBZBWMZVCF9P
	LRsYkpCzkO03H2MfSaywup9ysE9e99uAhuBEMq7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182912d7890-b7fa36f6-f64b-4795-a875-596bcc914253-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d2b1ac19751fff9aac0e60f569c2c816811e5b8e591401747923ebb001b87a4
Date: Fri, 12 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660293052
