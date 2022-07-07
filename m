Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187F0368
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 10:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657190212;
	h=To:Subject:From:Message-Id:Date;
	bh=VslGWqqDzZLRohsA44Og2sqi4TdEtieIcDqaGCtIcfs=;
	b=ciXlh1A6mNHXXx9V5EjOErlMW/D4tLiwPnNOjmDolsNCedPalxeHtkwlqhENL3L7
	CMPq9NTDET5LOTYwRftSPZG4sAKirJfSC4excQuA6E5DNnymK6bxD4e1r6oRFGVh1wa
	mGFBXy53ROYXJSf7m88vQhxOJOfCSrLwWSTq6DhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657190212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VslGWqqDzZLRohsA44Og2sqi4TdEtieIcDqaGCtIcfs=;
	b=WSaJ5M7wYkDMZGZxKrv+oQxsIjuKcCXLGx/UPJAIZYKAoCZ6HbGC2641RSsnNcZX
	6dkQfVzECnbW8lVP/RKycWGdgxGL8UOZKWCdjcRk6+g82O8j3UwgQNPPTKAF2N8Oa4v
	CLqgan1D1YIrRyDqN407c+un1vBhhEmJiVM4l9cg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d83be2a3-50606659-ab30-4537-8da4-f503b0611df9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72d66acc1f267e8b1b55eebc08b7289bf2d78e6be99fd17ac763b9d290fe2ff2
Date: Thu, 7 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657190212
