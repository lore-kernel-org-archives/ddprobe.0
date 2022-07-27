Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD44A3D
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658908252;
	h=To:Subject:From:Message-Id:Date;
	bh=L6btUIF6VEBYlmVWnT8F8UX20ZAi182KNh2lyCH4TAA=;
	b=I/lW/fnKoQpvqD9+nEGERMyLq6GkewqPQ5Ye5zR54xkh8Z8FGWNQZlatKl15OgEn
	sW2dWmBUj6qUeCcflyiWyWACdh56eMCDOyeGTWWus1jdU95HDMns69HP5yXMIjeJu+6
	T65IDuXNGzCvpKKPaTMdj8GghfY0nqyW5Gg2mRMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658908252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L6btUIF6VEBYlmVWnT8F8UX20ZAi182KNh2lyCH4TAA=;
	b=HWdgwlKpHJv807W0DBoob1KiPbhHTkJFFM3txsyOZtSqXR+S0iLB8gn/6DCu3gju
	lWcqA31hmBKK4ojcVPly7pyAnS/dZtMTG87N+s93J2LVIyk++hXz9q/Ys1dV67GLtqU
	i45i9wGyj+ZuJGpmpBERa+InyelmzX1S+EamFJcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823ea31986-67f70b3f-fc55-488a-8f7e-1435a5643fe2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17c9e6675702b4e0a2dc47c0f6a21063d33c3b1983f4b0cf9bb28491079c163b
Date: Wed, 27 Jul 2022 07:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658908252
