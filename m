Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5517C7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 12:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648210558;
	h=To:Subject:From:Message-Id:Date;
	bh=s/Zy8Wh231t9v42t99+/ZQCzijj8psAIUmQoIu/wFuM=;
	b=GhEYv0MJKYCMmZlcas7CUT9rowKrCfUtB9ZnDUqdhF3u8ujvefwax2JvKzq+rTtY
	1Ms2gXt6DdPoGU1P6z9hahL3HAt/JTS8Tjy10vktJHuKB8Vbc0zNgJmWyAkid4X2FQz
	yovmq5p6dDnIJs+vhpYQxmUWBIIx0R+kr8BoEGc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648210558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s/Zy8Wh231t9v42t99+/ZQCzijj8psAIUmQoIu/wFuM=;
	b=FvhgACZOsbr5No1nfiGoTubJKHqAphkw+dPW8e0sbKfsWZNjJjpi2N+ehm5/uc/g
	dWYPkM3SH5saLn4sYTFXyBZgYnb5CfINJYV7DZy/lStrRBkm8Q0Wfdh+TLkTXR5zsT6
	bcM1uyhTXg2Fqwjwp0fSDcJ8eUHguKMGw1moov4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc1013d41-1a3bdfaf-050e-440f-995b-371774346d25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d095e4a2ef89251d3c38db38c48975c4f006a979dd4d9c78165596d06186841f
Date: Fri, 25 Mar 2022 12:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648210558
