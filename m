Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BAD4437
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656814612;
	h=To:Subject:From:Message-Id:Date;
	bh=I5lqqqIqLQcSu/d3vKcY72RGlxPL7fvCim+CrUMIqq0=;
	b=khgnKlRePWkOlRh/QGgsb/l0ZrS7H0wcD3gihLwQasmCr4Nc9uX3rlt46nu5CEX3
	v6P7/j9BAseEuqd+0mhnpOJNfy4lSx4YFw01iLDq3MCVrs4ypMrYLM2zt0orcb72nwy
	N5Do5J3O6pEbZpjBBhIfq/rib1bxXbiDGA2qZ7+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656814612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I5lqqqIqLQcSu/d3vKcY72RGlxPL7fvCim+CrUMIqq0=;
	b=bKIJKGnbgAKjL6GqjHqwhWJUI1TnFLBJvzyh4/31GvtiWw2Hf2LjEPS6qj4iNU5T
	ZunZ6/DnBerxKJAhYxQI8ywsA/3V+DkOxqL42043uniOG11mjGdlNqsK3l8MaJWFXSx
	cfoIwia8BLCmofwGqF/qwus4ucpPTfqNr+W4XQUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c1d8af5e-4ccc24ea-3a37-44ad-80a2-c1cef5b99d09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ddc33cd763374c34103cbfe719fd163f362b8a2977b2fb3b7df3ee4a4d7b098
Date: Sun, 3 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656814612
