Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99D87A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659025253;
	h=To:Subject:From:Message-Id:Date;
	bh=cmwcIEIKRSlNv3p1YX0sXdLcNz8QPatmprMe2wlmTiA=;
	b=AwWtdJoMkaQCRSZEaBfhaJgXFt0HRFtXsMuQO64DgZ5oMxG3f4CDDweHD/5fJwjE
	10hohLksQ6PgglwBLIXCfM5Jz0MAVcGEh0F4aIap0dWb1m8zQSVJpJh/KRv84q+zpVA
	Va9wACl+QFp/qhPwIY1wE9ZVf15XgmiyWG10tPNg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659025253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cmwcIEIKRSlNv3p1YX0sXdLcNz8QPatmprMe2wlmTiA=;
	b=PiXdQ4GQO0RKBVYEjYivlXsWUpFFYddOhIJpgYIdeQEI54XgDcAqq7DCBFgh+u1Q
	RxW1cKIqBNkHPVGW1naZKa+MToN0WRd8J6101i4wTk7uFSKMHZmn4iHvicvcueK4Kg5
	E6gBeiUmMnwVlmzbTAnENB1URREme7PVKIZWlllQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182459c60e1-b7dcdc84-a77a-4366-9b74-a6b0cd2dde24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a344793ce83bffd41502344a4ab892b696851428dec18fbada69d0c58d744338
Date: Thu, 28 Jul 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659025252
