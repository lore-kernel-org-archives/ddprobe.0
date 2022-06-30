Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AAE27B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656608812;
	h=To:Subject:From:Message-Id:Date;
	bh=WSLy2ne3FpintlB2BZSUg5GNN2w+WnH01FrogkIEk3Q=;
	b=bVIAguf8HdvuWPCvAh6IUjusR2Vo6Ngz7YKZj8eoPj6HGlYpYyhjhTcmeH2O1CEZ
	WCRnNYjnANW78h/cAMq0lDiOz2he2o0vhdp6YQCpuQuWAK1V4vORr+/JjRmK+9fT++d
	cWtahnOAOQoGUjzJxNQhmubyhAt87NHY0l+QxpTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656608812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WSLy2ne3FpintlB2BZSUg5GNN2w+WnH01FrogkIEk3Q=;
	b=e4f4ISd3ZXqWl7WUrnYE0jc+iFGC5479HTUBSZaUSj3DnBJ3Z8Rmj9K4PR5GUq40
	dmeN6m2sPlTEhPUPE4ZZ1ikTeSHKTd4gt4a4pgCWte30L28GFmzZgIiES8jBx578f2J
	TDhrWL2T74SL+VSkX5G7GeEfPoI6cDYAm8+nKe0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5946d07-77e16ba5-e1b9-42ac-8301-cfd02de2df7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8cf82c1772db6a2ea3ed7f712749c9b17041afbca9bacd2c44708a7a2d2a663
Date: Thu, 30 Jun 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656608812
