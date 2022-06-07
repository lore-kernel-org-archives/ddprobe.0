Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 899397C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 07:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654588320;
	h=To:Subject:From:Message-Id:Date;
	bh=+JV2zdOGv3MOxPQfn6Jpyjv9d9aSepwnaqaVOTovYxY=;
	b=P95yOY5ApS00d0dPrieO9162Y4AAqVVE+vioX08SC6Tfvmb4QzNkZTpnDkH1SZIG
	pDrW0DBEnHnSzHbREgrLOhQ7A8SO7clXgMDv/Ur4OBmfqbZvKrimYFoAkpMp1YDMZZ6
	Bj6wZ2NBsNuASpFpyqqLHdDvby8OAgfuZxwLKD6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654588320;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+JV2zdOGv3MOxPQfn6Jpyjv9d9aSepwnaqaVOTovYxY=;
	b=MJyJgFYuVb1DfkL2THGdiqEfr+Onl0fTU10ySthAC2lXMPWRNTPBMT7Lm3N6nE0G
	uVtd7RR5Vml9cvbJERI4+7wO/FzIoEmKdJlnGBvrLlLMeY7jDpeC/SCOlMMw4O62mhd
	DeJO3dih7qKqj8G7y/7bf0OEb2Tgsh94ibCOS33o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d262637-7150f825-c777-4f26-8916-0b664d499249-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1ef0e77103f5516ce5de4f36ff90a8acd63f5873bb9a188f170a6976a110bb8
Date: Tue, 7 Jun 2022 07:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654588319
