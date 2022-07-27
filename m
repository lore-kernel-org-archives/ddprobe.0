Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629A6A3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658961052;
	h=To:Subject:From:Message-Id:Date;
	bh=Zi0uhNhQqQXiDwuU3pRTo7nIBuZz32FhzKRXhqhRGWQ=;
	b=F1tPznwRr+IlNHdwPD1s3qogMcvaNkSG2f9z9a6x+F1RDTQX7ZBdThZ6L8zVLy33
	LAmvfaf8NJNkPIccE2I2mJumB5L/fz2xtzGkJTyTh0NxMC+hXTb3i5JzRX8Tlc98g1g
	1USWbjn0w+YHAAwhkDUYBC9io5mbqi0CJWjrqS4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658961052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zi0uhNhQqQXiDwuU3pRTo7nIBuZz32FhzKRXhqhRGWQ=;
	b=SAcn3B6vQmMl5r9yy+27WT5RAiCfgMuM72+P4fYYS7SQRmNkyIAY5zt2Ry3t3YEW
	9KauWqi0mraZBvv308uVm9uZxOo6DFSWz4SoNZGyHn26TGMH06NtEOnVAW+Q3anfg+6
	ZvLB5rnz2RsO3myjP3J4Y/t6ATz+NwxRt3wDwKRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018241c8c3ba-af7965d8-5a22-4ca1-a12a-842c3188b4d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87f38f0b06f7bb5efdb2b23464a3b1d7334dd80d6fd99fdb3cc73810468dbef2
Date: Wed, 27 Jul 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658961052
