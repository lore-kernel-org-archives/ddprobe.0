Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CF133C1
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 20:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652992080;
	h=To:Subject:From:Message-Id:Date;
	bh=pl4t++kpWVfbMYfe2xgz7aDVgjoUhOzz2CV6yflXgxY=;
	b=cMEFzuzHRse1U9ImwuFoh5xCn5mnSjp0BFDQDmcT8RYFBIvI+phriZ9YY0Ns4m7T
	sf3y0nZYVJGmcl+wfqFvzRwOud6STUr1aC5TZDUCGUewcNCwLuALFSzi+yuCaCoWF3U
	SPMCb1KO5swcDTjYCuXUW9ZxZPwL63eIKOZtacMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652992080;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pl4t++kpWVfbMYfe2xgz7aDVgjoUhOzz2CV6yflXgxY=;
	b=DiriMhbfC/lnnM8l6TDmenMStqfdwty3c8qNMHFKxMpziB8Dif/IOkkJtjYIwb4F
	61o7hH/bdawzmGjjM6J8mtrycfptCUskMOkZeElheyjQ1grZLSpMolJThyle1vIbxwv
	db7+aJJqULoifyAlj0NcvTf1EY/gcDLQnrqmLgZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180de0175fc-e9012c3e-0f3f-45b1-9e22-3e179e204f15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b61be8db163863913dec44035c7f25314b52174f5d417a6a06aeb38f5c5ddc5
Date: Thu, 19 May 2022 20:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652992079
