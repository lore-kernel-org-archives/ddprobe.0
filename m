Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09E4362
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 00:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652487599;
	h=To:Subject:From:Message-Id:Date;
	bh=B//RpHDwWn8Z/FNon1P2eGGTuLgFAR3IbOmOK6jlIpU=;
	b=TXILq0eCyHw0QtUnAFUqYCq/VGPe8Ofkwt1h7XE0mW9WBaC+vGsUZzMHX6F8KzOX
	SM0pKwrnGaLbxl/B8lH5cCl+JsLUExfZLMydcLZDNpCJaraJJ2+xrnHW69JeJjy3QNi
	mOVVWz0DAuUAWmYLmLkwB/Dio3H6ZcH6f61lvm4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652487599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B//RpHDwWn8Z/FNon1P2eGGTuLgFAR3IbOmOK6jlIpU=;
	b=VGfXWHrI06lnHeifTUCFrN19dfahcz7U5lEXqSXvpZn0TFpVqRr/7mNUf6eFZuqp
	kredCGpj6PMyoVmZuLiivdhc1cuHEjBf+q5y/fPtWDRLCfKsj4pv4tGsGajLyC7PCy6
	PUIO0g14iUEyk9zYkEWqaLrTsG5qQ+9liuwzqTIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bfefb4a3-ab61f8ad-154a-4cb4-90c5-f75e0ab3c1ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c303af046e50c1044df4127e9cb6cb2593cf8d977eff73826f98a402eb4ef856
Date: Sat, 14 May 2022 00:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652487599
