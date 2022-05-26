Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E5AEC4
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 06:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653547019;
	h=To:Subject:From:Message-Id:Date;
	bh=0bjX6S1bVWj3gXic2BailnOiWFVxnv+pU/46g/5y9Vc=;
	b=aF/WWKLGJlDlJNPqviUD9WQN8ULrRhbXaDpFhKz+nR54smVWDaVbvttqOCx7ZnWr
	kyu52czgLNIKF/cw/wlyk79Y7Irylf6rI4JuJHO+PA0dpkzv0I5nsO8gDCFDQMZ6pBT
	oWf0pMUpaPpNzKAhntHU9k6JFS9sOZ857PRprt00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653547019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0bjX6S1bVWj3gXic2BailnOiWFVxnv+pU/46g/5y9Vc=;
	b=hnIguuwb5bjT1Mrz51QwC4nC1R/q89UJ5XaWplHQHuBeN1HMLj4OQqo+tpiDa46S
	xvK3T5Akg1Y3TWcFyFVWnD52HK49EIah+oM9uotAwBoP8njllMLgC/VnCxh3t/G55Wf
	F/jU29DTHpIqS0mFBqyqCdmCgZhpA1CrXbyUtDBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff152bfc-55f6c61b-49dc-41b5-9f29-3b172ac031cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76b4ca435cca61aa454fecfc254d222719aec27410e6b6bd4bb8be270bffb99d
Date: Thu, 26 May 2022 06:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653547019
