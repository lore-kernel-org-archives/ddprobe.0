Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D753D76
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658772412;
	h=To:Subject:From:Message-Id:Date;
	bh=6bPPbfIcuiUnNoj4XUitI1djEeCsBYePOGrnXB9FarI=;
	b=g9O3hDTnHRT5uUhakVsupKRwTRglRta3jkdYI8rT7N5Bb7cqZfdbv8Ntjx8J/MP4
	0KSs+ObciAPYcVUEswsdR9cUh1tr3+d+om3GsW/g93ETosTT1mUDT0gWcNk45WBKYgH
	H/AlAG5W1XGJZJ6UXXcVAL7gkgaqLZjGaKQgyhzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658772412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6bPPbfIcuiUnNoj4XUitI1djEeCsBYePOGrnXB9FarI=;
	b=TNY8QDvkKwdh9F25ZDNtYEgj+OD4tt4uw8+d3k6MHyY7FjOdOjVJu5oLBz1bYcya
	8+ZxLyLBmJdOtYYUmB5Cye/7h/a6klIRM7oRLpkcM1qaVRhhQocQK11+lgA9ASTDjyg
	Myo9uw2eVRzRyLVa8MGK3hMbavyBLLnQX0rP6mUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182368a57a1-1225ac8d-6589-4da7-bced-d06a49989f00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 353fae356c33b45383f6d6b3126472769bca1cf2f797845bdf5a2a57208aa615
Date: Mon, 25 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658772412
