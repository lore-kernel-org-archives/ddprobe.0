Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DA115B4
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 02:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652236679;
	h=To:Subject:From:Message-Id:Date;
	bh=srylMVuB+6k1wCfJWhPP1n6S5UbopBxjzbRIC9eNGT4=;
	b=WGOSiMVDWAHaztBAHeMVe+UkVysQSF2YBB9bRAc5wL60Mj2x39F7cMq1+JzoMdwL
	1pxbFNCOZeobUbJnrfZbHZAiXqgMgADVr5R8n2/YFKTs4D+mTp64jFY9OoTXTHfKmP8
	I3kwPA/TZDGPwbm0s6QNEorDtocI/AaCspgfMGo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652236679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=srylMVuB+6k1wCfJWhPP1n6S5UbopBxjzbRIC9eNGT4=;
	b=i23XpLYgDzASucJYLB/6CdnEdsvgymRqo90lSejGmFT9jM3ifWIn/73x9QI4KQlG
	RrPQTLcBq/fQPDalbU1hSOjC1j6tyCZ7cbErwvS60TfbhVloRcL1HOwFq9QO++XPxHt
	ix+U6g6oSFFmzEI+fiaK0e689jvDCyrU4MSvJiKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b0faf870-1e8ba46a-1db7-4dab-9ce6-e80d66d51a7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a77ee522399c1188ca584ad3f3a0977c2de6b0c10521888f2a2641f7d30c5394
Date: Wed, 11 May 2022 02:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652236679
