Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BF0210F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660416052;
	h=To:Subject:From:Message-Id:Date;
	bh=NqCcSjU0b8MxtYzIALNDSU5B0xTZwbZFgvFF+EB16vY=;
	b=AOoWQZM/dAUIpFd6zo49DIwuarTDCyzw1u2lgVgQIYoczmsnfWBSQ+t9B12X6hrO
	DCH0KXjpbin39caFTNlD0t3tErA32TLTPREjY6X49bcgwzbULzBJFwcstR5Qw5qUSPg
	4c4wMjZlmTFdrB8Z7mlUDo2QRof+KDJnyO+yVshc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660416052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NqCcSjU0b8MxtYzIALNDSU5B0xTZwbZFgvFF+EB16vY=;
	b=AHsTWB/pjvGxmw5+hZgcjGC+Q233UeL5wibylK432O5fFqWDPDQfaOvuvIP70Rw9
	94h4nmmWY3ZpFWfh+pP6XiIcCGLVgWXQ4yAJxLXx2oVYVcYmFXBnpJ6j1xJi0X/0O+I
	BT/tDZZSXyfZC+1Ft3aG3Rt/y14ljLDk31FJ0Q1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298824d62-ee97bdfa-97fc-4a57-bbff-3fdb74794d55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 787f94e11a62fcbf632935df9c904ff0087d8358174aed76e600234ca43ddd29
Date: Sat, 13 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660416052
