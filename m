Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397443FE6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 21:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656539212;
	h=To:Subject:From:Message-Id:Date;
	bh=HRdFcNYaj0TKIUxbBKL1UVf6XkFBwtd+33waOCGe8Y8=;
	b=JYFkD/XkMynJJIRcpquANBWWPVgYQZOMwXjg8AW8E7U68Eu3Vcm5wVl9qammLnnV
	fPhcFKtzRYJfR2/yH4/ZhywD+CJpJkQwsfE5JpkIg+r2RcQ9uHGyDnyQeJ1m9KU1G35
	YgKRq/jgkLlMoqbJVoHHzMGKVgVexVgEUmAmWMFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656539212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRdFcNYaj0TKIUxbBKL1UVf6XkFBwtd+33waOCGe8Y8=;
	b=AV1DAOQltUB/9WLZOvP+jWPcgIfEm0BBiM1myVF/AtvET0C7QbcEkW6JzCAuS4Sk
	nMqdLWUBMMRNR881eR96fhKSekFsYjMYHRtKZR6RSur+8c4rbSvtqIfl4wSGY164VT9
	pvPV5v2QY4DmKI2lIxCfP880Pno2KKbyAMzBqEQc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b16e6a40-b3063152-c5ee-42c7-bf23-ce25cb4df8de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 458ed6c07781bd5057abfb6275866e0f0211e11535c554afffb4a2836844b6fe
Date: Wed, 29 Jun 2022 21:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656539212
