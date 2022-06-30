Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A357462
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656614812;
	h=To:Subject:From:Message-Id:Date;
	bh=AxNTkJsZs8Vij7Z/E2nRAYvJKw00RoK2Tk3WYGRDuss=;
	b=gxz38M5BHvYcYfW67dOaYfAYdQhnUU330YkzQBrfLA+vTYry7zvAud74jUHlkI/E
	PzVG3n8uS9LZi6/2zoRn3Af1syHB8xgFaT1W8z9N+Z8MMOCtLFP3RDKNYjAXoP1k0gH
	dgDirBKvE1eqjFxCPHbwTN8vSQoTRwIna8FL1wXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656614812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AxNTkJsZs8Vij7Z/E2nRAYvJKw00RoK2Tk3WYGRDuss=;
	b=JuYzxrHNCtQ2rBh6xWfkxEZjzHcZbLL02lXe/V6lao/+/Lh/1NuREyjCERkoPXhc
	6EmE7QgOowGOapjinH65+ilDbvKmIyaxKC63/VQzyplRe/L/AswDeW1k+7B9a04rB4G
	t28UQMbywTT8w8h0FsqzVG2VPNYVpC+3DuoMOBVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5effaa1-af34505d-85c2-4aba-94b9-8b3f8a332711-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b480025908ac86ea4148c5f4c8c54bf124e10d851d42f740874d660f355029c
Date: Thu, 30 Jun 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656614812
