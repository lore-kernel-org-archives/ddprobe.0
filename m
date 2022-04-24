Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A269133E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 22:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650838018;
	h=To:Subject:From:Message-Id:Date;
	bh=Sa/CvdPEryBvPDMOyG1daLXJnFf0wNYld+jW74Cl5ys=;
	b=KPlLFlnhkHdFwKEhnEqN1EbcqX9+MHxAfn3G9KvJxo+Z0ZSzqKmFZ2135gBiCDNX
	b8Xt8A9rz4hSYWqWD/zEX2vQoQ45zj1lM4w1uHJceunGRl7HOLU+dSGOlfM9/Wz4p7u
	0YZyCoNq414HsdTDcsjhrKtcDau4JtHCerUsCNx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650838018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sa/CvdPEryBvPDMOyG1daLXJnFf0wNYld+jW74Cl5ys=;
	b=UqTCL3wfhrwcF287JQ45vQKPhZYkPaH20hCSwXVOtyl7EF4B0ZDuaqo+A9c/1+Cq
	2PZMVjaQZNnm339jp7m5ow1pN/ZfQxf7elAno0TxzAVj23Cz/nGnLg/TNMhO20LmDzy
	/eorhm7SjbH2b+7isbkex2J0/hk/JyGR4kTMK6Lg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d9d1921-91859f0d-5d82-44b2-bf77-44e180a5abce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff5fb5ed329c334376237dfc86ccabe25892cd7da594c5d81f9225cb164f313c
Date: Sun, 24 Apr 2022 22:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650838018
