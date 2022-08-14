Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2843DA29
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660445452;
	h=To:Subject:From:Message-Id:Date;
	bh=ynbW89OTX+tDNcVQaMeKFVfKplxMRqsH8v2I1Uh0hPs=;
	b=hprohb9eVDdEW9x4O0d312Mzf1wti/QCiO36vERfFrZDmkVX23nFiAIkDaX9hWxF
	p5kpqSwOCJUf+eO7oiK2jqxZKZNRe1EHAJjpJLeL80GI2fDhua+CC29CNZMeP5Mmm/f
	kCwOAdIhiUHqVLLOFHAcJ7jXPFlkVRJH/3hazVDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660445452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ynbW89OTX+tDNcVQaMeKFVfKplxMRqsH8v2I1Uh0hPs=;
	b=I7IgdBvqf4cv/XyZ9ecCv+8liaOH6oAc99fJHWOAm65F41UGjWbUPtDJmeMkb1CX
	hWS/QG6usZ0kznkpXR2Bumy5wSKvYno8/MVajhsJGgu+rgtNmFEorCilg6q7szqv/0u
	IeFZW+gtMjo52go0nEj4zcfGgLdQd3r0rheqtkVs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a42e93a-e775233d-379b-4759-beff-595d67567344-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0da996356d7594bb035a5ffaa25658665a4102d1b9b98ecd8d124a11aaa5a313
Date: Sun, 14 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660445452
