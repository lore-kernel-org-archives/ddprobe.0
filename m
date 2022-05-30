Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A462FAF
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 17:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653930839;
	h=To:Subject:From:Message-Id:Date;
	bh=+beSZ+RVA9VhlfodcHGMSavtqsHbLLF0cm7JioNFRT8=;
	b=RpYyCjgwl8YVIQO4g3l07zD5idMUdnfvYr46sGw8MaMxD0SfMvEFznqiFq0cLLe6
	63onBHrHNjqlPktoKddynNBtj7ZcBFhMu/BQJxy3EpkTG1DkConkX0CW3gVQDXXONas
	Iu+Xw3EXUEfMUxUhNh25Tw6AiMqvaMWyto+yWfwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653930839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+beSZ+RVA9VhlfodcHGMSavtqsHbLLF0cm7JioNFRT8=;
	b=YvfgDjUjwrgzoTjqIk3wjWQzWviG/XjFuDZoK/E8TgXbodeBIroB7Zq4s5cSIgJD
	Eg4KEYXgQIpSMYvEER90IWDgqbX7vqoqm337hlsSfql1bTRTnAskHZkJOMVUp06Acuf
	cuZS7xNPi9HqhLIZhq79Fn0ZrXd5wX3oheqOLnGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018115f5ccf0-ca0d79af-5edc-48e2-858f-d60af9bf1207-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6014579adc3faccb1ec85733ce2baccd41c7c827fe6396d71cfbfa71f41a785f
Date: Mon, 30 May 2022 17:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653930839
