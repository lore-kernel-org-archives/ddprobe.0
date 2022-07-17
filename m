Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1437C7E1
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 06:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658039212;
	h=To:Subject:From:Message-Id:Date;
	bh=eYV2C72+K0MOwGQgk/NLDjnVFQct6T7O2Jb81iOWu78=;
	b=G5PZYqOJq7nmuBWwgzAdwf7RW/4W2eegJVKOoA+Z292IHJ0xUDQAL4rRrZzPDzdR
	TynNL2QFXQ3llURV1pWVfk6YontHdVwo1GuDL8oWvvtvs7wBzXGev05PCWUL93Him1/
	88/dbLNoZ3CMYsUozh6YJJbEl/n3WKzdN89CcYxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658039212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eYV2C72+K0MOwGQgk/NLDjnVFQct6T7O2Jb81iOWu78=;
	b=DI2d6n1Tvdytv+Ade4/GpI4oauW7hc/yrVhJFuuoF6BcBl3TMvdsf3yQMyIb39ft
	PZAViz8oJV73y1L5rza+vX/PfqQ2Njhof8flQHI+GsacsKSJ8HJ6c/3zCHmHGV0Kc2Q
	9b6/6URYDNKuhj+2zPYp/i9GT9KZzF/vvncmunWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ad698d0-011e308b-1eb6-4b82-b092-41b605418230-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9a27a8b723b89f30968d70ff11d4f2693a7877e4f895ba1e4b92a360a21b0d8
Date: Sun, 17 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658039212
