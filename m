Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9A87FF
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 04:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653454259;
	h=To:Subject:From:Message-Id:Date;
	bh=8AJZ/6K20uUMzV1aE2NButznWlzy4np6yBJm4IdwYMA=;
	b=Mlwd8DfZ50Q/2yFChhw5ZHGlw9obskzXfqIia+vu+D6KppDwSN/eGBCHoZAbRIgO
	7rDyPZ86Y0UQZ7TQueZ3dHqummOJlbjL9VO8RU9ld47y3U6Ni32pvNvO7Y9ggmk/TGO
	2LsVYi7CaRA8Yyd0m00519V2ya6e/nvGLS8XgNkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653454259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8AJZ/6K20uUMzV1aE2NButznWlzy4np6yBJm4IdwYMA=;
	b=W4v95QSVn1vyLjoIVTfU8vDc/nFaf441u8So/KPW3xyWl9QgwYDRAc+ltj+vDdTY
	UdHcS3LMd7GGgibzHpHfzv16NKh+QhOH/NUq9YMurIHRfnMcooLbTuTAUZeSsuJ4uaw
	7OA6xhrOK97zIVmvUGV+PGgcUlGO6dSxlw3f/eao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f98dc42b-66492843-b9ef-40fb-8a0d-10cc87851bf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32311829d0ee255688c4f664bba07402ef9995463eb8c1424237f89e599b308f
Date: Wed, 25 May 2022 04:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653454259
