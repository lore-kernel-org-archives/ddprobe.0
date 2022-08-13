Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1177E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660376452;
	h=To:Subject:From:Message-Id:Date;
	bh=C3mAd+S3O5vwSXGyb6lVFGeZXAcPvPNwveD8UMH48SA=;
	b=cINAA/TytlTi8HJHo5j93kjqZTvNWjPj7LdNGISI9DHOmtkwknUh3aG+ZvKR4GHX
	8yGEgw/NkbO+hVtnIOJdEdsV8wLDRu8IGhmHQCxcGUv7/61jqfh1W3v3tivxJWLmDgK
	2d04ubkp4/Mx2LdZDsu1pAT2GG0jE+ii6BXrUqkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660376452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C3mAd+S3O5vwSXGyb6lVFGeZXAcPvPNwveD8UMH48SA=;
	b=ip1+Yl+6uKTROFm/0JrlkIWOkBNnq07p0P5cWQzZgIvRvVmpXaR5P4yeks50Zm76
	eFpgVrb254DATIZK0DKi71LLpVzMO6Tl12o+82LzEru92dysumURMjl6WSJZn/lDJ5Y
	l1uYWS2YdLWeovPfKCY+eKULbnZFZvMe2s7fyHPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296260db6-dab867f5-6144-4af2-898a-b4a4222356a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 068822a69bc68562774d45c6235b0eed5a3e671d73a51289b5433b1dc1154a31
Date: Sat, 13 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660376452
