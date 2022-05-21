Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0443210
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 19:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653161459;
	h=To:Subject:From:Message-Id:Date;
	bh=nssp+pbaFTi1W3dTLS4USZHILDsU5v8T2Whp/2ehsHk=;
	b=HT3ycCs/mKJ9fcyh14wo5PfQPepKyQF/NWawTjCUmnu7gwPkGmX06xkNWeWH/TcC
	21zFgSnbFaGuyLQsvJ/l8iHsdMircERuy3RZSzLRnVHlckA/GjcsR2uboQBuo0FiKeD
	KzOJxjIP+JtzIYMFHYY2PVIiWlzfsKJ6EHKX5S3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653161459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nssp+pbaFTi1W3dTLS4USZHILDsU5v8T2Whp/2ehsHk=;
	b=jLvgDYUD67LTg/5jH26Bxd2ybuhF478kWX5hdh5rRONUZpv/tKTyBbAKdXck6rj2
	o2RgONg7VH9jXaBGkQiV/17hr5/geAS1pClzyzmN9GY5TsgI60w+6zluGT0LAlJneSt
	3et9ZCLKa2WhafQjPvns6joJ21u1yc2zukFr9p0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e819fe57-254fc8d0-b14a-41f5-af74-9e2b6ff01d53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 301b8acf4c7b10d27de42fb5f430c505caee90926f4e3888d6ad2255c7a66987
Date: Sat, 21 May 2022 19:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653161459
