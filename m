Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4EB46A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 06:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648191598;
	h=To:Subject:From:Message-Id:Date;
	bh=R86ZJNsb3httEERNPD+SG811sI8Ldmo9vHg/y1vFyvs=;
	b=XPu1sN6tIBTAJfdCalRJVKCfLXY8hL49MuoODxKq9RIxb0vFaBhtX8DystdBvYZ9
	Wcnad0Pg+Ytl0Y+il41knki97w+tI0FsqSJjlXWy2TXLLtPPXQFqEE0CWGWmEp/Ikxa
	oj+U5NH3tltY/6FIogcfXH7tpe02/Zl6yTEaPEJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648191598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R86ZJNsb3httEERNPD+SG811sI8Ldmo9vHg/y1vFyvs=;
	b=cALaYmagUrGlimOeeSx/4Xq34DyYKr+U2U1pjD4+qVgCknzpjqSqxI6gHxvorhB2
	NHvpJqQkzFXuj+pXucIWTPrC+oFKT7OUEr33Vb3mFJk47T35YxP6JqCsyfDiCEgVRjG
	UDjFCWiGifA6yM+xu+CEh2OCZ8RtazzVZivT7D7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbfdfeedf-a76e4630-7c09-4fca-aa6a-e206bfc08b8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09cf70a6b0333700523d2bb953a01f9a9f95d34c4342d3feeff9f9ac06bcf6b2
Date: Fri, 25 Mar 2022 06:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648191598
