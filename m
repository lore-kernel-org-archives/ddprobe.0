Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029D47E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656932212;
	h=To:Subject:From:Message-Id:Date;
	bh=XQvhvywDgeFeZNHGIWz6e8ILITU/cjyhrOhIabOufzY=;
	b=PuC+4IO8wFKchzUzBHXLoTYWIeVGALMy1UhIJ2oMHNqpEgboxHRJd5WRZYBBZ4i7
	WKRxNOFQkHVxrRvh7VDhHRcojohbrsSIzXzvO/VbsJKqPkGqUQ1mq1GCdsm218OHTb0
	CesAkKCWn/J7thtPqvWueigvkOA2WL+RKMWh37UY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656932212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XQvhvywDgeFeZNHGIWz6e8ILITU/cjyhrOhIabOufzY=;
	b=Y/V5L41MiOvtYpnffA23fMnTr2gn8sUWNWmkuay1bmjIxN/jKSqhENbe8jOGp2VB
	Z9+IBg85NNdaJ1wpaeSRUobW1m25ww0IVLzllO7knP6eDpNJTjMbvwUe5blOCxkJfy1
	o7OX+Q0NoAWGkbBAOCFxXFaqhHu8aIM09y4Q0WBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8db1e22-95b4286f-577b-4355-b0d9-b6205700c64a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e924fba54e49581baab157e9f4dd9034699511d293e4faf99b66f64fb29a54f
Date: Mon, 4 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656932212
