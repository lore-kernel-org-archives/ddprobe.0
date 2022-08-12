Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F77736C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660269052;
	h=To:Subject:From:Message-Id:Date;
	bh=nEsry8BHhWrXic733C/4BtDEEk0xFH5S8MDwDQP6IRA=;
	b=WBq6hEmOokde5u1zr+/ONxyG0I0bHXMKUNV3GBOvad7eBRm9e4u0TJQAyw+UnhjA
	nDOFIxZPNHkpPui1XN8tsif05mEDT9tpglY4es4KiUlYC+Oa8VkfrBfzDRlAdMFBj1V
	neK3JW+5WvSIitQQ9w8YVIwA+Yfms1q8ILNtUo0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660269052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nEsry8BHhWrXic733C/4BtDEEk0xFH5S8MDwDQP6IRA=;
	b=WkYyps2ZYcCkZdhCmlSuGyAB9yH1kN5sTsdJrm94dqOv80Iu5+QVytbhH2AbnqFN
	+WzAzrukodO2gu6l38ONQH2IErYHGcr77WJp/kjZyT+0TCvdDBIfAOG6mrUXJFJlLOm
	uOyystT92uBclgCg2MCKLkHGld5YN0c4uFB5MlXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828fbf4298-d140f301-5670-4d23-8415-4ce53eb5487c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 576db75c24359d02da214aa7c69cd78f3826fc375813ed341ce4f10e56ae7323
Date: Fri, 12 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660269052
