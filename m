Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EAFA21
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 15:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654960379;
	h=To:Subject:From:Message-Id:Date;
	bh=aDgwV/Qjvyf/xAr260JQS3J7A7aC847Jg1DRB2G8o0g=;
	b=N0jf4GbIy1ol53oogN5mpIVOxJMOlhn08Os3Tf3nYXOvIBlreFm44+N2jNihrv/y
	gTj63zwS/fXdCJWnNkpw9KV3Smfnfq7QxmLPpqhGSkOaJAVacAFi9lxvVMKyv77iAu2
	ir6eXi00ufdjmYrJIBSDfzBIJnZmemn/Z55qNuGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654960379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aDgwV/Qjvyf/xAr260JQS3J7A7aC847Jg1DRB2G8o0g=;
	b=CHyaJ1TXhqAs1l7ZP+lQHajujWXqYG0TSN5iXRfC68s15NC1FfTTejili+4M5IRZ
	kPnP5oAzcNW1uLjjst1S+GsNci38wc/jomXmtZVSSPgZuUAn4L05T80mUwnZsYb/Y4X
	hNAEYQINJlU9kg8k+izdep9Pq8CTULZO7riStq6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181535355c9-4dcca7b3-cefd-4daf-8452-7f808f13cea2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e5e0e2361a22025a6f298edf1d800672fdb09204b03a1e7affa92c801f8713b
Date: Sat, 11 Jun 2022 15:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654960379
