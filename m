Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC69C4694
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 05:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655185379;
	h=To:Subject:From:Message-Id:Date;
	bh=pV2p3c8PEaUf/4WUVzG6XBI9YU6KBBp9pQ7XqcKmiMg=;
	b=X+0uOyWhEAiKY+oTpXceP9rU57cwedYyMFHsDy2/MgIKgbembM90wCzZMT5ojtVn
	DeBAe9CUEX1sS0JYXLzPV1bYPOsOEBL+aze8hswNOMmqyy/CzS4GwjbaQV/QbALEk6G
	zHJt66N5t/LevyZbROyxjOLRykXo+KhVjfN+xW68=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655185379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pV2p3c8PEaUf/4WUVzG6XBI9YU6KBBp9pQ7XqcKmiMg=;
	b=BVTuXbFK9b+t5jWEZ5rQG1LUmdMhSEV55939+E+tKU63NKApNH7PfKe+r77ynlTt
	WXUOrntpws3/JO1xQ6mi2B++UHKWgBQ3O4AE2+QD/RGdEq9x2vb9UPLf/7CY1H+KaAX
	fbXyXEdRsl3CtARshz/AV2Hc2ijqu4LI1AAX8h4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018160bc8f8f-49327720-8d0e-4f13-851d-3ac3e0fc698b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f756f9dac743786492b8f0fc7fd8384646056781853b99d9e30f54a961c8948b
Date: Tue, 14 Jun 2022 05:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655185379
