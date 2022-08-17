Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766204404
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660746052;
	h=To:Subject:From:Message-Id:Date;
	bh=V+3Ya68auDl+2mVWrq4NqT482ByO3mctd/nL5rVGDm8=;
	b=BRL2HCTLx5gs8Tntj6EEUZxVHkuPt6SqIO30pNZArKzneI7YamAkKTeXL1CSfov+
	hREKPI4vEovB0OnNXXpo0vmQxz2fNrqhJl53auUcC94UlQjDJRI4xmQsrlPHh5OmrAl
	bwJswW21hEwvJqGPIl4hMq/2npYaCDtc+3maBLeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660746052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V+3Ya68auDl+2mVWrq4NqT482ByO3mctd/nL5rVGDm8=;
	b=Fc76svTlJzeCGnFwf3JmMhf+I/v2lvxzw8mzw0DwExmwct2kt8ztG4Eku6uvTiqO
	LaAUpwp/TRRTC3yBKcUHf8zmDWkb/f4PDJu6hv4rCN4HCgYkrVrqtuOd8MGDujfbhrI
	znK3fQOyrTFuUVcPvadZ9DjU+t7+HgrWv+gSNJ8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac2db439-de64ea91-17a4-4a03-b786-b172a06e3f19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f5692d2132fa8a93a1a8d2eaf32b4e7120b208a2523d5231a957c06a37b5b75
Date: Wed, 17 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660746052
