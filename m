Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815F51368
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660306852;
	h=To:Subject:From:Message-Id:Date;
	bh=a37zzcKEYWw2F65O9tl0ZhEI+9DuhbwNdwiN8KaxJHg=;
	b=JwBA4KfljQinghNvMazfoLyWhmxPT63lJUaLEeqVWy/YrDZaFUrGUBi3cI24fv8I
	3gvlJhS37traEn5OTBEyxGMhljMrq3vJmVRW7NnWZ62K729YqfpOj804lE5GH8wG2dZ
	wKRPOQXI3IX5x8KtkBT7JHBl+ODWdOYabxVxUmSI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660306852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a37zzcKEYWw2F65O9tl0ZhEI+9DuhbwNdwiN8KaxJHg=;
	b=g8wAIn+SzB/qMVs+BQciiJ2z+hk70NEBrRKlJAU8i8zyzKTw2z5OWjqrVwapSDUT
	D8b4Our32gBDWT7Dnlruh+hoYXNFCsomkN8Zi0o8ppWd2nV71XPeYFQcpeNa6wf7u0A
	6QsAK+bm5iOZ8p6vgpLLDFI4pF8/2cCrJIqnYRbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292000b29-209e28bf-7688-45d7-ac14-cca62f0875ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a1c0a2ddd3cbd82c65cf19de07d09a94faeba49b6462f987fdf5cc639034de5
Date: Fri, 12 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660306852
