Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676F44A03
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660334452;
	h=To:Subject:From:Message-Id:Date;
	bh=dChTnsc9qFUVX9A70cJkrJydiWetw8CLmQ6gRw1bf98=;
	b=AXhQrEk6ySz/xEoIFKSrE6RxS5oACEG67RuR3+FkVX1JEmnhHoLNFXAIWrKr7XKG
	AzQ++niGb4mz+mIRhIE5jQOIxNu9awIzNOErKWtC8G7JQdezE8MkJoC8ZPf+B9JctIF
	cPYK/zR9D5CXMYYyUrlWIx9fIf+9jV7+771SX00Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660334452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dChTnsc9qFUVX9A70cJkrJydiWetw8CLmQ6gRw1bf98=;
	b=GYtTMTwFQwPLrP77Si3aMZsP5MejBRWCZNtV1T2IwIyYAGo/WAcfpD3Gs9h/tQjD
	9V5AgbWKNhVfH2AsMKY1OVVYshi4Cy6/1TRLj1pTQQC05/cEK4YPrxu2bFPvx6vxCcP
	eAJTGN5JbV/887XtIMxu2+WIldP1sv0zzs/n/+ew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293a52f3b-6089a7b4-2ae7-4ac4-a9a0-f99bdcfd5a19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb6d06422b43218ed341bb0091a97b7385adacc994ec6c7ce5c1a2b5aaa1c7e3
Date: Fri, 12 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660334452
