Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6855371
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661067653;
	h=To:Subject:From:Message-Id:Date;
	bh=KaMH4foViRDodCtvnSnb8gLmWtZdB+ax3NBuuIHWTfE=;
	b=egc8WROdOhA+JweHRbdLXRonI8BzEZ2NgMZvX06gT0EWf0+0XjKQvAaSeszZLsWS
	WZsOtauOz7mXfL51Rz4KENOPPH6jJS1VuMaWuZ+TODHiUL+RTA/UjR7ZytwjlH8tcnP
	XwIrf/KsuzW02kCfEbmjldT+BpjgYqwMS5OoT7vI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661067653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KaMH4foViRDodCtvnSnb8gLmWtZdB+ax3NBuuIHWTfE=;
	b=auV/ZtGxN2RrQCEjylcRp90q95Rnz8wQPqAvjqcd7FrVlF4SzyHmpdllaWGUqFbM
	14oNjnmlNsfN5kN8IWKyyoFX0lmQeQCIVDi50gDdI0eI5wBZOG1JOFdgSp/LQT1YiqF
	zss7bqUew8/Lb5bfsdkxNBCByvxTYBk0KP61IaNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf58eded-150aeab4-25fc-41df-a999-90dbe4cdf689-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4370dd476404ca7f045e4bd9b260a5f3d9b784c2aed60c8bcbce6ed01bffbe34
Date: Sun, 21 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661067652
