Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C0F2F3A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 17:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649956678;
	h=To:Subject:From:Message-Id:Date;
	bh=PA/QCx21o/oDmd+Ns6y1jp/8FkwOsryEyNYGOGCTmOs=;
	b=HZIP38RN/lapnE61Pnq0acbnl3T1w576IjJwUZwXz54q5K8RxRV2vGqKFdFE2j4l
	3RvTjXvKpB/OiE1lL4d+pqIg5LCNfU08llcMerhfZOgWSs0LqjDFF2F8gQ2DCWwH78j
	fsARIuBmlwT3yaH7JChTfzq7yM+O+CRP7xch3RVM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649956678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PA/QCx21o/oDmd+Ns6y1jp/8FkwOsryEyNYGOGCTmOs=;
	b=j6N5rR/p5Wdp5uCcOt7Y/7qXeUDHmmDzYyfTQvdHHcMCV84NHXPDBVjmbs58wiya
	8+qmYpS54HRLmdPWlwoLL8U3ddvIisCfqFf+1OwURixbkjY1JChymghDjpfykUlc9NA
	JxO7rJxDG84vioQqqNVNfhvtlRYTJQQttL1ykGaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802914ea94-f8b4c91f-87de-42d3-9968-fb9be2b2e633-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 636646b1ceb71eec5bff21dd806f4b93d1091c7d8e48993ee4cd298e16c636ca
Date: Thu, 14 Apr 2022 17:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649956678
