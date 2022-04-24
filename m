Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8653201
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 14:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650810238;
	h=To:Subject:From:Message-Id:Date;
	bh=1sm/7FCVFdpHj4EgZYk/R311HQwYLa4Dn/Wfl1P7G7g=;
	b=Ye6846K1PHwofzkaLgvDv18aoedGKcDPRdn6sbCyHJwdJjGLA2QDRJaXfbVR7imU
	lijwcs21ps4mnHq1LYZuSXmFxvb+T7CtYipyp8M/3yqyZAszO2DEtJuF0OGqFgLZtt9
	5pX3k7Zwcu60sLWxDGB7GVaZJnyJn1Qy23mkpEiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650810238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1sm/7FCVFdpHj4EgZYk/R311HQwYLa4Dn/Wfl1P7G7g=;
	b=Bwu1HlKsM4TMeBipezd5/ykqHJFNW9koW2bkFGMi3cd9Goyo4zBE5BWezynZQx9G
	ZJMMir5U85nAiUhVlHbR0zX/FdbtMdBsFbBLcBztTUIBcRbgr6hooYGfJG1B7HXPiof
	0JPsQKZjCaVbDVH2jrQ/Ebe6wlXkOKpypD8zQgTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805bf53557-6dd92d2a-f66a-4dcd-ba94-8a4e2c2715ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28cec0a5894555f4361e01b3a1a5d8e0786ef27a638de72332daa07042128db8
Date: Sun, 24 Apr 2022 14:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650810238
