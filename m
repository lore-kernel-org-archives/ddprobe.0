Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4EC80F
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 11:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658057813;
	h=To:Subject:From:Message-Id:Date;
	bh=+4eJcSnYV3/RI4SJqxoLSnNxosvsrswpcttw8iYiwaU=;
	b=XKCz9jzRAttkPeT2eucIjF9/f/2NIh979pQPc8hhE/32KakzvwLfnRRYsAuHVOiC
	/jI4ZC4bftj+F4VHFBHeRn4MgzKfDd05LZWupnFL8tZLfhl1n/ELiQDiAnU2fJjWWWh
	hL5HjZj4aeuUiAHixnLohSQMMj0YrbEeEpZ1bAeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658057813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+4eJcSnYV3/RI4SJqxoLSnNxosvsrswpcttw8iYiwaU=;
	b=X7Nz206S8GlEgFuwQNNb7VHvTjgadAi0+sUWnYJoHmRAfZUqwvjQYSMtYUpGDh43
	0/iDQGwOjxTMjql8BtfmkgkcGrDTRQmWhUfLFV5S9QjO5czkB4v/Wju6pITIpvIh2iT
	O84nJJkT6A0ASWiqXoZ53vJ4kYnF4bTyaUnUMQ3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820bf26952-8ad3a035-bbc4-4fbd-b3ab-ca150a4e8a52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36cb5defd00c6302abf482dcc288b7cb96654911b5e6b110520510da37f9d1bb
Date: Sun, 17 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658057812
