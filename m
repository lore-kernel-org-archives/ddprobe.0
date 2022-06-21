Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04D47F5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 00:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655772239;
	h=To:Subject:From:Message-Id:Date;
	bh=IYKuZJlthr0jZOTMSvbLhdu/Swwc1NeFpStnX4085Ac=;
	b=cQ0klcDb3hi8vVzj6YFNAWusgmJwQXkbgZwQ0rGJhZXOrmmYAfl7RfGFAAvvoZls
	Y3eQRu0AjOeoowovKjJnDZZSL8mcdFBIINMcyEYFREv5vwLQFR3LyqunUw174TOivrz
	wmrAdSnnMEvaiXF/DO8fj1YztIhAMwVDIph8Dng0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655772239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IYKuZJlthr0jZOTMSvbLhdu/Swwc1NeFpStnX4085Ac=;
	b=CjfyZcVsLnGT7dZg2YmdPyufJHOJhQJexElAbTeZ+892L2ldhspYGaMWvqn2Zeo5
	bsw/kfS5gozGQRmRINrxzY8V2lskPMQM4P3MH8TeZzGQWLWZp9miPeb7Y+K0tZjD+C4
	929qCbIPvFiMTa5wDZ1+HUS3IufQ0w/Du6AV6f1g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183b755b0-a6a96bc5-5410-4ac1-aeb6-9f880e353aa9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b73d4a985dc9a1f0ccdd15ea5a5e79781da63f9b3e1a4efe1586a59b54dd6b3c
Date: Tue, 21 Jun 2022 00:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655772239
