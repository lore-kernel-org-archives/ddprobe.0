Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352157E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 20:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654289099;
	h=To:Subject:From:Message-Id:Date;
	bh=qeCGHQpNPMnTVY/wDWZTQ2AIzsI89o8ORLuYR6diRBA=;
	b=ZTyQqtbkjcjYcyefaW9/JwV2okKxOw1V87hXUA+qrLhfC9YE/fltldTBPzg7H2jT
	zK2v/GiztEKMDbZd4S5Jep3kJSaYBh00WIg3YKUREJb916y7smxct+PlTYXWyFJMUbt
	jd5Nn1H4clk1vK0AWh1pYPboiOGNjLNQn+/uie+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654289099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qeCGHQpNPMnTVY/wDWZTQ2AIzsI89o8ORLuYR6diRBA=;
	b=Jain1b5aaJeFDHA2D8WpIEcM+XCG9TeDMMqgTguXz/44vOibeFhQ+54vgmS8B2oh
	CGE2VhzI2iit1LTDXJ8RNV+7VN+jTbiN+4UkT1lnLAGNN9clxpNayg1FQqQMtk3YYIX
	JI3oDbe0k/UucFCC3UScmD2okAXEL+s+qcVSFcv0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b506a23-e35c2230-91ab-468e-97e2-b97a034339dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96ba2275ac34df51229be25af73c6b77ce0b2db70603a3ad36f9c02dd386c593
Date: Fri, 3 Jun 2022 20:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654289099
