Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DC77A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 21:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650490138;
	h=To:Subject:From:Message-Id:Date;
	bh=hQbbDfHJ8GhdIobJko+OpUOfs7RO31yFGGJbg+68Az4=;
	b=WeJh/mSa2IxmgB/9UHnSwtG1MmJitxjCNVF9c4mct2yD2C8SvjArALEVxs3suzn3
	MkCYEpP6VadU+GikuerEObarPy4VBEfLMtK1d2fm2azpDo16I0i2FxoUZ5ilS3VY3AY
	lgvV1jyVpEzEV/1R7hx/oiaT580hK2vULpHvrqJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650490138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hQbbDfHJ8GhdIobJko+OpUOfs7RO31yFGGJbg+68Az4=;
	b=HPqYUjx0X6ZH3dqUWsRUQcMBDaTK74sHFIg4ivrEdJVjyAzX0tWE3kAwVa3YD8Os
	760rc05SrGe22LT3U1vq5YfDc4txUgJkArF14XSlMjTWqiKuU3Jb/85+jAfn9c3o3CF
	ROdBKY0vtX58XwF3FPNlF6LPHAIjPqqCkrKLJr1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048e0de96-414c20a3-3548-4230-8b1a-d0339c89605c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 540f78e30541c4600f868d935792664f4d74982bd0523685dd4c032501ba8751
Date: Wed, 20 Apr 2022 21:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650490138
