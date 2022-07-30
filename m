Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D0223A5
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659199252;
	h=To:Subject:From:Message-Id:Date;
	bh=ApHHogWKZ5wUIaXGllMY/keLgt+uHD8cAMU4k0CY9Js=;
	b=I/GAlBZIyKIxwzjU6mRpg5JdZFRdb11QTFj1IZuXmo/9M11hjq4dOzMilSEKz4E2
	TTLO4SgeQLpe6vWfAfx2Xq+nKRS7grTsTNgH+7+kfolAQCHwkvViChz75ko4UZHMoa5
	QFgvF+aN9D45NPtYWVXMGLe9C08vwaqVJu2kChBo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659199252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ApHHogWKZ5wUIaXGllMY/keLgt+uHD8cAMU4k0CY9Js=;
	b=Sz6NpH8j5wY6ez6bxHYUp2/K4XV+1u/EdaJq4SdXeKlpOgNd7TwsJxegE4iP+X3H
	O/aFv4ZThDfIy49VZPQFW8upePczFSHMxLIhtwFW1whFzLR0h1k231ia5mO0ZFfMWqI
	HCC4yipIpUZ2SROp+5plZ7t0n9JMlRfRUlZJ7Si0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ffb686c-ffb90a65-abcb-4af3-aecc-c0cdad70d1ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 002a7c57e43e8e4c71ef8cb67bd8440c19761982235b3da582b3232042679cf2
Date: Sat, 30 Jul 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659199252
