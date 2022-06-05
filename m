Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079BC4681
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 06:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654412279;
	h=To:Subject:From:Message-Id:Date;
	bh=hZeIIFpbEXdSpSPebwIqCvuQnIoUbDIWecLZVK9yJB4=;
	b=krZ9Nk29jRrcJvcBoQqpCg1/5spLKnxAsrY/DJE4waWpQJjlMqTD5l2dSu2C1Ifi
	JsVs4egExigaiNO1ud9+b/zEPn9ssU9UcwdKRTZWBXQGxATGE0WsGi2gAXWj8j3FGZI
	ak5KTZYuftDctfAB8aTfWWpZyxfZOVezUW7CpOAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654412279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hZeIIFpbEXdSpSPebwIqCvuQnIoUbDIWecLZVK9yJB4=;
	b=ggpV4QBf+DUwlh+oZfoe5Hhb87UwCa/PxxgbM+a87BM7NTYW7zEi/OYRdQHCaHsB
	E3ZFHpxY2Nmte1nBZUDkGfccz5xWUtn7/hvXFGnoVseajx+UYDxeh7S1vyvqsLcw+of
	7v+75B5L2VyySr0NO4cLKNxYE1Mt1oD1NIRH81Ro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018132a7fdb8-2f9c53c6-25c9-49e2-bef1-3eb1d28f2da7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6359fe25d2fd57ff09f8dfb599974cbdd312f52057738c3ac315bef8fcdd43a
Date: Sun, 5 Jun 2022 06:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654412279
