Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F8A20E7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660191652;
	h=To:Subject:From:Message-Id:Date;
	bh=qBVLu3RH9lK6YgnSVe4F/cFOI75AR+o2F15uTjibM+c=;
	b=hA4MvbjUAbhVta8kAbwPww57c+o4mn6FE2pGz9FWzNuKUrRwty2iY7PWSDjevpkv
	GG0UMrZssddmldE1RaEhhTjQou0PmbzqMfM/+ssOCBXJBaXY8MwO6FCwnyWROuC9NCp
	hMAfNsgb4AXq7PMSTdSTnGFqlOHK0zD7517/dj/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660191652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qBVLu3RH9lK6YgnSVe4F/cFOI75AR+o2F15uTjibM+c=;
	b=I1pvGQAe9KU4yA2GQlhKlLr5VDyhl/d0b+XvnO8gJBZLxLOK8tLQ8h1HXaiatRcq
	rPEgBKk/vR7zGirbLj8j9JwIFMOeFiHL43ZibWFOBIiJzDg2wHHJ6hqdZK5QOSVigl0
	cWGB+Gwd0bGsWMDmNEYyZ3MQwYnn5bayGtTk3wNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828b223b09-7725baf3-1925-4631-aa98-fdb32dfd1cc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c53bb6ff77944b57c4a3099045dcafe472d297a9f516ffe1c60f67bbb72bdfe
Date: Thu, 11 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660191652
