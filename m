Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179311369
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 19:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655063039;
	h=To:Subject:From:Message-Id:Date;
	bh=xRSAHdeB1UtapSpIdB2pJKlKW3Y8Y3G2J+93wJMEWqA=;
	b=NKzZsVZRywYIbNGjDes6vKIqIjL8fEF1iFvZd86HIoorMU06c11MMhe2H66dAkZO
	3BDxiibwqPMvz48nxZPnDphywMvv19mhxKGMd9+3WluGTIY79pmtcsnbkj8Hnzz/Zwq
	D/NPGmEpQobJwkL9+NWmAtY2CK5lSZIVzgc/oC3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655063039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xRSAHdeB1UtapSpIdB2pJKlKW3Y8Y3G2J+93wJMEWqA=;
	b=hMArAk6EqSJRsUe1jJhbZEQVHxPoMZBpaRLpFJ8b+X2kaVwezfL9jY6pK3TQCerb
	uEXGX1cdYJndz5j4YIMGhMjjpUPdFJ3RD0XaNZhTIxmS7QwPdEhp5y+i2mapeNm0k5E
	WLk3dE/kGg2OxOVxvFxSCs73N3FKuqzLVjENcnXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815971cd18-e09bec49-f969-4e3f-b6ed-a3783a782521-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24c09c3f3fec0410d86a5c72fa672baee6eb34b782ba4e7b60614922b12f7f0d
Date: Sun, 12 Jun 2022 19:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655063039
