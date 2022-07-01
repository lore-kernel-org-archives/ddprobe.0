Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5A25801
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656712612;
	h=To:Subject:From:Message-Id:Date;
	bh=w1BVmcY/+jEZi4xf203rVHaJEgIwgWivb7Dk4oKadKM=;
	b=HgEKc8GZUNYqIYN3oGsEVjdd3po7PY85ULxnjAEDAlsgL7Eg+jrEHjfL2OpjWcxK
	oWjCjgrEIi3iBD+VShax9E8Qct0QyvEPNMYqd2nvUCLaUtEOmJ6eUvVALO/hLEAUWN6
	PT4OCxOcZcw4fJM7Ui0+DCX1KZP5Z/1Tm8l3sqAI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656712612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w1BVmcY/+jEZi4xf203rVHaJEgIwgWivb7Dk4oKadKM=;
	b=NLjUeX6/4Iv/xVTvVBKRRPz+UZ0gIV8JmxhTlSHyiPKK3wM4ahF1zwQzpiIDj0MF
	bEMzqkN3hZFfybWNLzmDhMSxwx/Ek0Atuvqgp2GID1j91IaobJ9BY9Bza+0EC8jZxaf
	/OJ14QW2KD4bcLUzND9NNBAVQbnZns+wCsFxVU1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bbc449c8-76bc8754-05ab-4d0f-8753-7cc593ff85fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09424cc526c6aed8f87ffdb041114953c6cf0bc854100011790d328388c5715a
Date: Fri, 1 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656712612
