Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C451854
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 00:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658363212;
	h=To:Subject:From:Message-Id:Date;
	bh=MMXX4Ah6WQpQMdXfjpBEalluo9lPNBD9B/VKg03ouB0=;
	b=NXasewmlGrZY1enAydKSEPRv55EIZY6DfK1AbG9lwMUe0OMTHZWDEIyN5xQ+wFZJ
	UFf+HQaBAM/nT81BK0q5B2VlCgp4EfTcsRzAT54uDNNkkFL8vnWbMqopmHj86cW3RE4
	tP/MN53jtgPyc2WSnQnQxd5djxkMq9hIOKHNt5gM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658363212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MMXX4Ah6WQpQMdXfjpBEalluo9lPNBD9B/VKg03ouB0=;
	b=aAXXvbDozRIG3K4f6Vs/AZ5GbKzfncLpcfjd4OKcwnmy0dKi4tGFkfY9SF5EtofQ
	cq5lH3mFPm+ZhWqJy5/+R8xdIXv4a9gLQUKIlUKOtHMQ3QMPybHvyfY5R9QnNTLuQMa
	QjDFP5aAm92ZxL1guBbz/yqXKCEfcslmZ/+J8qXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821e26721f-e9e4df97-4aff-4c1f-8dfd-7d5b15cd5aea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3b2d3f829569e25afb00bb18f5672aa0e7b88697525f853adee159239c3b28c
Date: Thu, 21 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658363212
