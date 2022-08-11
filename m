Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8D4198
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660221052;
	h=To:Subject:From:Message-Id:Date;
	bh=RoFGaEdgYZYJryqM4AWY2EW/gUnDuy6OSBJ7KxzfsUc=;
	b=e5Bbv6OdgL/Je5HO5r4XJ54etX7WsnsWpl/2XLzIu+MnI6lwzH0WddryUkxmFUMY
	bN9zRtQtBVIKWiXElWTyemo/hCKq/dZ2ot5C7hRgCI1awjeABUHePmHk2+62mUBX6F/
	grcn6d/NYQe2oM7vZg7Zr5oK+mPz3EYfapfMzMQI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660221052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RoFGaEdgYZYJryqM4AWY2EW/gUnDuy6OSBJ7KxzfsUc=;
	b=E6OLOkzhHK8MwNM6m8JK9o5slsO74gUuKM/eFz2/tP4wfpcwYbcnrpWxylHKKwgA
	S7tqChOKSn0qHEo2b8w+Z4V879kPZIc+eEjF13QzO7SY1UHTeOSv1ubmC7b8K9DI0p+
	fP3wCRFsprgCb3AckHhH2KTBlznkM7vG6IibQ0uQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828ce2d6a1-8edfbde6-efb9-44ea-bfb3-938b83bcea5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7aa064add09751604b5eb755de754e4bb15555ac619508c4912a957c87fd7dd9
Date: Thu, 11 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660221052
