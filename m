Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB308629
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 09:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653298799;
	h=To:Subject:From:Message-Id:Date;
	bh=KPkofe+6Zc1gujGLrStlfgGh1hwyRC9KbcUy1PCGlD8=;
	b=cpQQZqnqw6KOU49DcIZRBVU1pUVFF1CSCkVI+3rErSL/c2bkzKpnwIEXovGdJeiX
	42DrbhZdGs41l+JAm+9deTRyALWeV0RVX4VF3JsIcR2VVqzgoXfR2GtAPXr68GtCDJf
	78tkvCEL5Cvnu/nx9ddtvcA9+LeXArPs7Vy+s7cs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653298799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KPkofe+6Zc1gujGLrStlfgGh1hwyRC9KbcUy1PCGlD8=;
	b=DD7q1RYgmD+I5Io6yUT+E8jDQYZwYlkiMYkfghuQb78xKSHSLvQXdR8XvVOop8JE
	e+MsiPyw8uXh5Eyy6Qja7xWZr8QVnlZQmQEc7VwfIR+PWygrSmbuk3JamJ4RK4zkxdi
	kPzz68+9xfCJWgBbh2XwOtZpSAQFiz1hiKa8EaOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f049a2a6-ed12c0f9-311b-48e1-9807-9a41a2e313e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 060f4440bb21bb0a349224672cf633600ab29b1a8d9ec1a479f26b9e43c60ce0
Date: Mon, 23 May 2022 09:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653298799
