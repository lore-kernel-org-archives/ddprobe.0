Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3127B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 22:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655679119;
	h=To:Subject:From:Message-Id:Date;
	bh=O059T4tmnXnyZj2JAWoifxSDkl5ZAetQ01EMYob6a1k=;
	b=PVbyaQg61EisnNDdesA3G6MxEEwA3vaH6/74iWwBQpidq3AXagKOw/h7qXQ8uS0L
	RbhaXXUrk+uZE7vGmDAgpOxFAMF7Ur10DQsLfS0Gst3GcbOSQNDjtAeWWKQB9pm2WAK
	0Ogrpisl1W7Lq9bK3yIH7BOIhirfsFze85yAYWqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655679119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O059T4tmnXnyZj2JAWoifxSDkl5ZAetQ01EMYob6a1k=;
	b=R4W2ahtA1FilR46YjDwL0reN3E0Mgjhj1VQ01JnL3mCu9sKeQW1aWnkwSdfIQ5Qu
	qoUrlA2044gTiwGmdwh/h3UuPu1/19FosmTLFmN9+gnzgLV+BqsYplBx1eti57Rug2h
	UB1x9it6Ig0m+T4JrLVta3bzDkQH49vBmWOOxIUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e2a6fbf-c1c3de34-fd51-4dd3-b7f8-7c6e3945b993-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00d6118dd0c62346287cd026e2a08e3103a81525140a610ea09cc1958c3cc6d0
Date: Sun, 19 Jun 2022 22:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655679119
