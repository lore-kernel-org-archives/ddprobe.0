Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E90A1366
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660646452;
	h=To:Subject:From:Message-Id:Date;
	bh=2C8a3XVjJ967u/m4weVzULzJQ7VVI6szXSgSeLKJ04Y=;
	b=DBiHn9kh3V0HxW0ntKGauUtQpwwjsRfacNsYIi6XPKPv91Q2LGxapg/Sf0C/KCLT
	0F0rRfa9HuU0+9YN2jwd7738Sqx9vleieAwnl3zbmsNYSy3qCc46P49h6kYb+MAL1Lw
	2YK1xy0REXvu4ovVDwVD6i0CMCNOevMTldNRHPDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660646452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2C8a3XVjJ967u/m4weVzULzJQ7VVI6szXSgSeLKJ04Y=;
	b=NxTI8HzXpG4gpB9jyrOYAlfl4n0MDCfA0P+8iYhDQsP/RZWPvUJGioFCcq9EMnHJ
	JGw9PzfNs8/U8zL8XL3hFFRsnri032RHrJ8IwmmiCRuP5ODzCbIndIjTu0BawfDQl8a
	sg/l+abUMApnlVV/p3amB5azdc578bMNs80xLixU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a63ded3e-418c7bb3-e8a9-4aec-b210-f8191bd9ac9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a20749f514a269702a79736e49899768a116e36857bc1eb80d1c38d831c5a392
Date: Tue, 16 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660646452
