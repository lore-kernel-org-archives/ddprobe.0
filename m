Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019257B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 04:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654661819;
	h=To:Subject:From:Message-Id:Date;
	bh=ShjSyNnyI4F3wGF7t0H/4AzYYPCFeuprliKSQYK2wYw=;
	b=TafDmX9L4HgQsoGradXHEzcGbyyj7AW9IhamDjPl56BGM/B7IMY+dPRfgapFjifA
	jMGvY4SB4kY69oqRIj2esRi50+T5DIfUiQforYGGux5jl52oFG7/t1Z9B3YAiBek+VG
	PYKstrXqyLFUKj16oxMWXJZKunf74ydP87FLY2Qs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654661819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ShjSyNnyI4F3wGF7t0H/4AzYYPCFeuprliKSQYK2wYw=;
	b=GLedk1VGomUEPglLylBAMQEiKBwcPfnYJawQytm7ZmNLGRJ8jNwi88tnsnuZvSSg
	b4gYicjLIX73LXYb2b02Wz/IGjt7gdvcG/gOv+sKpqqSqMuQaAKfUoM9i8A0FcJNimD
	pKQeqbd0OKPo/7ykfCGEBzmavedOZmVoOMvdX6rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814187aba1-255b1756-44e7-48d3-a55e-ed546875ccc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7017dcdfe09e4122450dfa3be336d3475a3dd6690f67ab78e2b9cf4b004d243
Date: Wed, 8 Jun 2022 04:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654661819
