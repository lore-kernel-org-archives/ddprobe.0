Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2B5A3D
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658906452;
	h=To:Subject:From:Message-Id:Date;
	bh=HoU1goKfs+iYYdn7KAzROINnp9SZe8kRw8hhpje3XW0=;
	b=TalDe0F6CqurcPSXf1V0sv2j4p0JvQZZbQDDWB8s2ZjbxoP/A2/DNMLsA81zVLxq
	C3wSjzcfj2sNHGB5Xiz8x6j5BrWZnhe6PD1X0gogGAe6Ldby4SuQnvf/u7DlHL5ijph
	Mp9p9W/uMo+werxxKX3kkhLIyOSc1XL9HOeQuwW4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658906452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HoU1goKfs+iYYdn7KAzROINnp9SZe8kRw8hhpje3XW0=;
	b=H9icKpIUlxTjPFiT4YYtZFM7ousW4EiS0UPFn9ijSWAh7/RvBLe85dYLuJce6ss5
	uXf16wuu4m8zVB2YB5nVhiWZOUyL+eoF/ElCdwYqAnduC6MeCYkaNoS3g6P4TXeVRIf
	JcRIirveME56NZRIUCb6OSKXqD2yaVpzlHABBQ1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e87a274-5f0ede97-2b46-4ae8-ad8d-0d61e8b4233a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4972cb3a35be9f9b1e34312893a6650a5724c8c9383888ed6c1f6599e358886
Date: Wed, 27 Jul 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658906452
