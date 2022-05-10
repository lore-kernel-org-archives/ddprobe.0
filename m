Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569947B
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 04:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652156159;
	h=To:Subject:From:Message-Id:Date;
	bh=syZRXOvsvibGr9TRDoJ/DK8RtRpjvz+FRXs33bxdpQA=;
	b=QM+/HPNQo5ylHngkVsTFPTCS2+kWvH8s5nQ7c514Ri8KCoa9nE5n4fJ3YSSFP4VY
	GCRAUgXhWibQgMggtvTlOvRcO9yjwUUdp7cURODuWxnFxYPdQoR0ZyE4NHIa3DeTcME
	cnKK6WeDXiahQlihEZihxQsmsuTEDQcdp07+4RA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652156159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=syZRXOvsvibGr9TRDoJ/DK8RtRpjvz+FRXs33bxdpQA=;
	b=MP7cOQDaIuvpMqBNmi4prbXiMHkmp6KxjvlR7vpPI/iVAoEUVUlOrjZHDVmECjHs
	H+ArFouBM0KPxPHvHpxR4v0vGJunzrqp9/M1tKNFWS/YFqGI6RJECPrVlhLRd0ZJSoe
	UKU94ArCDMj4hMgbcHb3PtUqfblWuUKLaWn6eCMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ac2e5508-3782b4a8-26fa-4cf0-98a9-d0d6211a85fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e9a6329fc3ea5cb7ff78b937a91a9f706c0140886e043a7985edeffbf8f6839
Date: Tue, 10 May 2022 04:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652156159
