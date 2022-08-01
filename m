Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690BB7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659391852;
	h=To:Subject:From:Message-Id:Date;
	bh=BR4clcwMAI2U+bA2kUX+pw+jCDBzK89mcXGBH/KJUZE=;
	b=IVQzobyvkVNPYnbR16c92fjh2lQ3f53sBc/JTXKnkxuTkMABfZR2S5JyDN2YfYUw
	QHNc7S3zD7moRXcqEphfIkjJD9tgnkU3eTI9ry7Fd4P1trqwJ3Bl0TfMYofWyG47uQp
	COFvPfc6ootQoNrc6hzQlkKOWZgiVutO8lFd7/TU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659391852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BR4clcwMAI2U+bA2kUX+pw+jCDBzK89mcXGBH/KJUZE=;
	b=QHaIhHPAIUafaP8zFZPDNK1FnR1maWWFz4RYrWq2iWlGXKFS8LO9e1TzFPLinpoE
	ghAap6UDqjnf6SPQ4moiyAZ4xpOtRDwyK3wtxOMLHnv+QiNbUtlreqkNC7nuLxpjrPk
	VqdlFDWrmWxcnNahKm1wLARnG5bK4vBZvThkOg9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b764025-434546a5-7a7c-4086-8675-13cf376174e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0aac6f01ee5e48e7ea325447cef3e254f6060602ef9252eb488d7e7b7d9a579
Date: Mon, 1 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659391852
