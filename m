Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215FD7E
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 18:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654020239;
	h=To:Subject:From:Message-Id:Date;
	bh=+t/3ckkweVWeb7x8O/pQLrV9NMG8/J0VD3NgngR4tcE=;
	b=etGhwQpZ1U22EMAzYsFztWufrohrvQ32Jn+v85dEWti635pGwIs/ToHgwtHpNzjt
	Em5E+TOnoSn8q+bs/0Ekv7PycruVE8s7I6MflGE2cxRlOou57KAFd6y9tY5F0EZeVBN
	vDzaKXvEDhlV4jPljkv2mbdjDdh4L/SaMdkovvy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654020239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+t/3ckkweVWeb7x8O/pQLrV9NMG8/J0VD3NgngR4tcE=;
	b=Lg6Yr9e814wqDT174KxrtBCxwjjAZInFBItq6KdlsbyNjtmP3lQ/uf0Gol19lfrj
	q/Y/aGdiBgkFQpWXSTk5p4NbyjHPl5jj12FeRQekZoTG0LM7gCkGJ4rAH7q4YvJwVmT
	204t1dBM4VHU9CD0F0dxmJGN/v/wc+Yivr09dwaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b49ef97-f009c424-ef01-4127-8119-bcc68f197a29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4f95c2ec082aa05773f9efd3dc54506816af9ef0b6760900ca6dccf768063de
Date: Tue, 31 May 2022 18:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654020239
