Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87AD2C9D
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660914653;
	h=To:Subject:From:Message-Id:Date;
	bh=HRcgGmqM8Xl1VowRhokW0XzZdeeQCfX8EAhtQm4MrOM=;
	b=J2czUosKkOFRJ25N1K8JAFQsU3qnT06n4VTJ8xUZ30Q+NyGoSi4mCZdO6TbIp+HI
	JsLMpzFHqqvPtTsZGwS3pCBA51CV5iWYhE1bCWJWw/jldd/8Wq0JQDio+eZl5rptpTv
	cCeJhrS8goyRTlar/DYWeARAcV/TDnz4xflDOmYg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660914653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRcgGmqM8Xl1VowRhokW0XzZdeeQCfX8EAhtQm4MrOM=;
	b=PuZ51E6xDXmUY6WwLX3osbQLnpxUNpdE3spVXmaBesbKKtBnr0JAQwgNG9ReF6D8
	12eiv/Vb01+7RepO7ZgK7NuQz/5Qm5Slm0/23PkVEd19dtoBW+ksr9w4ZzAczj7uCkP
	EJl7ToBzgl4cf7jMyrYq+oDkQS81mg36Ocs60C3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b63a55aa-b6bb89af-ed3c-48e0-bdf4-9fdf11418473-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36f58cc10548426380f5b0ab9db6b7be0732a4a2355b2966b63372d6f267281a
Date: Fri, 19 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660914652
