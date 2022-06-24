Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2303823A1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 06:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656051412;
	h=To:Subject:From:Message-Id:Date;
	bh=LTLqqxf0BCg5Mr0iPDtZFCQcnxKwNMn2bmPefRWFgRw=;
	b=DZuOeanRSW5yEXuqL9CgA+JazLMTpp2zRmKZeMQ8HGIWJdnmAaSBwcdaDqPccQY8
	Vdr/HYi60Nc4drDrlXvzgvXFM7rT5okriOtE6HAFQG0Lhk4vSXWVAQpkdrYfbLTR5WR
	NPLS0uj9Y2BS+JeZ7Smg07Gl/w2XY1jSCe2m7070=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656051412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LTLqqxf0BCg5Mr0iPDtZFCQcnxKwNMn2bmPefRWFgRw=;
	b=Fv2thxivfC8QCMonTcFoQsk8PmKf/lFOc8/MBYmQ/h6CE8X4Gqu9Kzac+P4Z8cYN
	dVXaXqvORS/SJT76uYoahVtDhYqjrWzZQY0nN51m3wWh8IyPgTXYOQbSHM6XOMGPDub
	lb0adres0me04raSogQQ2I8RdEb3zIdmUV2QpLTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181945b2d56-2261f5f5-781e-4479-bfdb-d01c4ee656aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e86bb925c44df6ceed3989ae1d758f8f26017118d8fec1a35e8eacf8a53c202
Date: Fri, 24 Jun 2022 06:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656051412
