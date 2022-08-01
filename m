Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B49E7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659359452;
	h=To:Subject:From:Message-Id:Date;
	bh=jRAYIAXX71T8rUtsZ4hZUgE1Zb75yfuBXRo9Bwlf0v4=;
	b=Rcdg6iS8x7HIuy9f8UbrumxBw0YtAMzeNS/f2cSYD8sHHWzOoxaRlSoseiTUntme
	ZNNxocUaeKGzRe/PodUx5X9JpIO8JybTnA78hFk7OcJaOS+Y+laUVyMcCeE0Z92K+sw
	BsEjm44MHQCVVQaRd3kE7xPudJEENT/dXwFkvrY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659359452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jRAYIAXX71T8rUtsZ4hZUgE1Zb75yfuBXRo9Bwlf0v4=;
	b=kayawVJdvztKuqW6sEFIGsc/+BzBOmLnNOdbsm973qHPaPR2T7ALODiSq3Zy5Kpb
	W05SZSwQ8gJ5GzX0nIUmzR9MuRF04jbZd6GFOEPxgWHCc5rJoaWx0Y+lsMcUaDFIMjH
	iZoXgZDJLU8JnwDy/GZx5/Mp+qDwrl/SYgBIl1Wk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825987dd9b-27a638ab-b2b6-4a1c-9f2f-2f168f57686b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a1595066dbf42874af29bf0ab30260042bc2ff3bc0024d49afce8412d5a4d56
Date: Mon, 1 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659359452
