Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C17C372
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661062852;
	h=To:Subject:From:Message-Id:Date;
	bh=P//fWILa4YrKvfr3kPbwgq0MPTB39bdphubVrwpNVNo=;
	b=HpRpn5cL390XnUNQcBQHSSPCnmGw/NsEb1bJf8k6Oy75rt++d7lk0PGVrrLiZfW4
	9O+kwoqhGwpFZqXu7lrMMUqdjpM9orj/lmnTzBf3ee8peUAgeuTxFXxeXL5f8kZouho
	es5QEjHOlDsNHXEvxl8jNciSnfSZxzr+AhgOtLa0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661062852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P//fWILa4YrKvfr3kPbwgq0MPTB39bdphubVrwpNVNo=;
	b=alOCKuFCSEBnwboO20jEuneCeltBi9lTNprkoP//dRazk7T6VISmIU8nnL802iTm
	xESYoX7eBAvCnL1TBODj2KEaY6zpzMjleLNy+bQ5feG9SX+AbUfrlJPycJWoQrZltrZ
	utcm59+IVbkoJP+X56ieTboeeUXE1QvbRfS5tRjs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf0fafb1-3905a7e1-9f96-4618-9417-acf8bcb4f21c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56cd154d13a77d028fb381d623712e1c8339cea56dda276702ae6d039c3a4dfb
Date: Sun, 21 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661062852
