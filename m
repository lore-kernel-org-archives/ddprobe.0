Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6801B2F36
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657402612;
	h=To:Subject:From:Message-Id:Date;
	bh=Izt3c1icMmjOypGeMwKFKHX6KsfJQJxhMIJM5srkjE4=;
	b=QPAxUNOyBcnAX+HX6+ZJnsLqNuUR5oLxp7GE+zK5qOcNdCzWYrPveY6tUgcWitPy
	M3a5Z51hZ+ffC8WggFrOQ9SVHBeVGtXii9khoe4Pu0TeQ5KChDfQsoMcR4Cg1DpJrpP
	NSW8qkM9iFER2rqEATM4JQcc5aGienbBRHXOVkjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657402612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Izt3c1icMmjOypGeMwKFKHX6KsfJQJxhMIJM5srkjE4=;
	b=Sk9EmNDaECm6C0odXyrYsZ0kCAQ1f8hLSo6fLSZJr5ey4dJuy7a/AtEOuBlhZ83o
	DMs9Z5aqtDNg41nxi0MG41N/v9aUQSJUuIPNKKTWpOoAkJMq3RtLbm2g7xsZ7Tx5kXE
	sn5w4CAvb+Ilfcj/gwlfET0WjSH6FnnYPEnvCK/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4e4da92-71207fcd-9e06-4068-8077-89c98286490a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5c4ad8c180d6c5d29460b341a9acaffeae5c1fe0f4b6c18508a3834a65b5375
Date: Sat, 9 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657402612
