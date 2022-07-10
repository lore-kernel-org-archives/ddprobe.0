Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C7C7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657415212;
	h=To:Subject:From:Message-Id:Date;
	bh=OYKZYqK/mwyEWjN8fIsS7pjy8B1w4lH+aJPXrcRRWrI=;
	b=QNSLSYgN71nkfXv1Tpd77+hSdegmwYGqu7PM24N9/iuKy3zEPXiHMLuHWtz31gdT
	mKryXwIzOHzQJ07pljuMmYy9o1+NHomH8tK8SPNBGBoGj0WHxbAXy532gx6qzyAA+aQ
	//gFZsqvmZAdehkncrFGn3uK7GZFcCodc33CL+2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657415212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OYKZYqK/mwyEWjN8fIsS7pjy8B1w4lH+aJPXrcRRWrI=;
	b=jJLYk6FlHjLVPP2KAb+2m1PKL5nIZfwvjt3YNwZzarEln8aJXAHYHXPFJYYqvrSh
	Tm8GUQyPqjGLfbjimU/V1u2L69hMaTwFU95NFOViJAKWUVMP1T0iYwVR6rTiBzH2ovL
	d27kRi8UhPRvi1RGG6sI0v7NLMNzXOaJLtJTEXiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e5a51dc4-04e1d442-525b-4e5d-95cd-0a1d34f46498-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7030a9fa4a4760e075c761172b35e384c6cf6129d7b71ce07b99a1a1fcfefaa
Date: Sun, 10 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657415212
