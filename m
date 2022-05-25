Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188AAEA8
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 09:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653469739;
	h=To:Subject:From:Message-Id:Date;
	bh=R4jWKZpbH2I1c7Fjw0fOGu2nAonqCwKKeF17XgF11L8=;
	b=Ks1MGA8lc68+MKwpD5ie4fQel0U9D4d2reaU9rbGDwboGc6wB6UJMlkXT2OMaBZ6
	3oJW6dLr4ggj775uAOyujs8mHbFZCeWI7ZkePcIgKFaaVaeyhVwnssu3dAKFUJZp1EF
	juvUgeG/zQPdqkHORCraz/Y2lF1rXhz86/uwe8Ps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653469739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R4jWKZpbH2I1c7Fjw0fOGu2nAonqCwKKeF17XgF11L8=;
	b=eUjaWMHKmLRfQYiw9Yui9j6csruZnFm4TdHVfL5TzUMeu8o+y0njUt0aDu/FA+92
	yYE5g+9jKowhJSJV59ddNdyjyWPkWP2dbIMEFtV1DKLpyNo/cJD2q2xoUdJqiokYttg
	/FaqjzbXoU9uYIqhASEmpDKce8ZVqYc1JOO6711Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fa79f8fa-de1cf014-8931-474c-851e-fa6d1da3490a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc0e23a26085cbdfcdb387255c7208379dcbb334a795968a43c60af1f1f30f5f
Date: Wed, 25 May 2022 09:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653469739
