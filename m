Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88F81EBB
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 09:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656581812;
	h=To:Subject:From:Message-Id:Date;
	bh=m+vGoh81E1dSVlpdpaYvoxEiIi0txGT6JplybYavk74=;
	b=VfUzMRIY9lZoR+iacz+YRdGy4zzn9MezpnZgiSp/SiZdUvCVqsLr3/1oujaRTSpn
	vpNxniO24NNLYOyGLINSdL+2Pt3dryaOn65EfRY9KSB78p4FURnXHH1dU2d6KJl5aI7
	asa+y58w9EiU/Luzrf9ZcrhBjgGC7Iz1ykWJWRQE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656581812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m+vGoh81E1dSVlpdpaYvoxEiIi0txGT6JplybYavk74=;
	b=NDZ1c8MwkdiK004O5sUyboK+AzXJl0zx9S8irLUArbkuYagOVA9xyX5hXRJZIOCi
	p7qKAqsykKYQdZAcQx+CXX+J7cSz7h8GP5H4MaUjqDAD4p/yg5EIHbH9PjdqgqCWI5o
	UDMJxFnp6B4OhRObJ8h8VM0+Cb8lp8aA4CvWgF9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b3f87054-fc970b09-d172-4b0e-a5e0-44e6e2749f57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 911bc14a02815523fe794183eb9c0941bf88ec1046250df19860ad7a02eb3570
Date: Thu, 30 Jun 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656581812
