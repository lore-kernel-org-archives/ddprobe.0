Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFFA620
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 03:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651807498;
	h=To:Subject:From:Message-Id:Date;
	bh=rXPcO5TbPwIucMlXcAs1o3BntctYm+6ZPOrNYYO0UUM=;
	b=YvqMhSm9mL3wK4XgcZtPq9WbJzZokDvGms9MmpF8gSyl6aRPeMr+wddJGDII9r86
	a390YaeJYZyyF8eDFGa+AiV6cDzYgXcMqBjIaZX5CzrKH1cQtIYrsR9HRznX37MGjGK
	iyIAKGLJw9s33yVKtspeSBUcUuUJcDIXsf+ZmYhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651807498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rXPcO5TbPwIucMlXcAs1o3BntctYm+6ZPOrNYYO0UUM=;
	b=kJuT4e2Aqwj005XDcc3BVKXOQHpufY/rpdm1XZETY7Oc8C0mI0W/S58j5uuIk1w+
	ePOi+1WaUxMHKGdCHqrNmFLJvcoNkLLKN1HIGqCCRFd1L0KjJnGgDQiIvjCp8341yub
	pVHv7fUJBeScbSzkoXZNl5GeJquwAWp1NAVWZE2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018097663051-ce1a6fea-9ea5-4a6c-8ce6-51249d94670f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1441350aeb4745c0de91307337af11a545dd8d02507da92372551b8bd320047a
Date: Fri, 6 May 2022 03:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651807498
