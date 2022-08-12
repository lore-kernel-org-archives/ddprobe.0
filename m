Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A635D1371
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660309253;
	h=To:Subject:From:Message-Id:Date;
	bh=cxtCWwkEG1lPOcHZ+imhcrmOHydGzXqDo/negGtpY8w=;
	b=XIF6uHSF/sJnqpzuphKJV3mHTHWkXqIPMXRDkYYEwhU31M/q2us+BbyUvMqfycUh
	XFd9FJpaL/Nv1V81Q5cK/+ydLYlM3DRnS1xuGNZYBjpsJs3wXZxyrV/aWZPj1O6pq/f
	w2hThnW5tXUsyGdL7hodtJA2V4NN/XU+h3qbyZF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660309253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cxtCWwkEG1lPOcHZ+imhcrmOHydGzXqDo/negGtpY8w=;
	b=TB8pFt0keGWBh7pqvBrl9r3Q0ksToW2lIISLMZ3+ll/dFJRV2c8LUn1z0r0S+agJ
	jPxmRYPdY5h9Y/+6eAXO6nbV1Jjb4g6tybufIDM4TmHZ2b1k0uvOZX6swLh44We9wTB
	Q3l62CWfmW7wGRJYzfw7mosFSZVZ1OEix0BIBNIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829224aa0b-ab8d2072-4c19-4fb9-adec-cfe3dcfbaf30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae7d25176299cb4b19d21edfd82107742367c573710aad6ef8dffb79cad77923
Date: Fri, 12 Aug 2022 13:00:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660309252
