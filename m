Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D216AB4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656532012;
	h=To:Subject:From:Message-Id:Date;
	bh=hyyRrrir7ChZ6aeFUIpOcGBX/k4BBhJae5dy0Tn/pQA=;
	b=JRTpr3rED/1TVBoqsGF7dv6RXmUeERH0oKlTlOpZUNj9VR+BqbeNzzuWfh6P0Ts3
	qIQbV4VtMAIfg9POHzfY79cJgNHz5smoNp2yYQXGaRL2bYWP7jPM9HbFZo9QF1McRjp
	pQWZxMvMl3V37LU+29yIquCpIMe4ulYZBPDrpPCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656532012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hyyRrrir7ChZ6aeFUIpOcGBX/k4BBhJae5dy0Tn/pQA=;
	b=ZnxIcE9XnYCuW+mkS0blvrsxsoe3CSMzFjtJMld3tXEYUhdS/0TDNgHTQ2mGmjQK
	el31Lk2De/Jsy7GDfd7Dh9A3pN3XbK0bbRQ1T32gxxBoL7ezBSOVjeKzTQ5gJMqGkwQ
	N8wqMnCCbKCiXJ5w/DoL40grMF5KpAPIBAWOSE0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b1008ded-0af2c18c-3b74-4de0-a8f7-30089b26d04c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8679e7caeb0d0f816b2a02066f1b45d02a8b76dfdbbdb4d296fe22932a064dca
Date: Wed, 29 Jun 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656532012
