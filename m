Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E584C9D
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660592452;
	h=To:Subject:From:Message-Id:Date;
	bh=IXIN0fb3Py6h8LTLJwF6PoM9xQJ8cVFl6yEA2INieko=;
	b=bbqy/yyGXfx0EJUA767kdyfPoqGRbhaGo4q6vNXFwm8mZVAFnefRQGf8gaRXot7c
	mg3GbDPSRJ1F1Zz+I5nYk3lgZ7DyyNm6f5Gs94Z49vDhsHhAkuRhF3WO9poI7PudJcW
	q57OS0rVN7SnIRXMTC4PFaG3zfCCPwCASNmGKdRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660592452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IXIN0fb3Py6h8LTLJwF6PoM9xQJ8cVFl6yEA2INieko=;
	b=NUM40+tv/z1ndWf0o+CdGfKXj+/ZaS+o1nJV/4SXa/XdtbxpSLnacQYj8hDxKwKi
	OncfmDDI9e6m0Ftkp/sRSx1fbxwJHMuycKzHOtYmKZCXqWShHZVEWRB0Ceg/k2yNT5t
	EAjzwn4nHhe2FGNK5ioXSxUmYA/Nookfa+HezJHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a305f3f2-6518f51e-40ab-4642-8c79-01a9730ca037-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 787fd38ad540f1f268c59853478fecd0f9bd8be57005f17f13c3e034d59ecb03
Date: Mon, 15 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660592452
