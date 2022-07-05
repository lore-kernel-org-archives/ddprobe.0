Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02547196
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657004212;
	h=To:Subject:From:Message-Id:Date;
	bh=DcC/EzCgLCtMtuDCNux4TC8uWKcgfUDT+pbuXvYqIDI=;
	b=Rwz9CNEeVVnMpVi5IuPxjBcANtl4AyqV7TTItuvl9xS3osD4sO+uXXhihpj4AUhJ
	E0+BSTx+L5j1NuKV3ZNgZ9JVULz1R442G1/j6rEToONplnW0HwjmV0AyiFqi9GtJNE3
	CtzWOTI/ELzJWUI8bLxORg2HTJwWe7Lu06l8FN9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657004212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DcC/EzCgLCtMtuDCNux4TC8uWKcgfUDT+pbuXvYqIDI=;
	b=E1I8MzqeIsxWbAW+8TxNkLpWiRCGe8DEsDmFQdpEjTE6FEpDxN9CrE9Bg3aj1kSy
	EyqPmeTAqciaKB8TpAkLLoAHe+SoHPejrpV4m5a6jTS1RqLrb83dU/GU+5AiJy/fR96
	xOFgJSg5bOIO3JNqgLACKvVForM6SL98CahU3Wso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd25c01d-c861aa77-4cf8-4c8c-82e6-701307a4146e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02f5f19eea553851f316bcf033c69f787cd3fbe06fd174af765629f0558dad26
Date: Tue, 5 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657004212
