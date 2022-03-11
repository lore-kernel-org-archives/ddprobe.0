Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AAE211B
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647024385;
	h=To:Subject:From:Message-Id:Date;
	bh=tmd/G7ey2PpYf9vJn3fdOwe4ebyVbS7yHj5P/aVkbAo=;
	b=CZis4zi/wPJRd5xZQmyqiZyTqGSGKm2PIpeMJTf4TaJAqpKlXdtEPypVMz1BP/nl
	8BhlLx0+i9ZM8aKNWs7WGT4wo+p3DSfNeIFnpRFCtLzo9JEdKiRBGarGUC+tTcTPsoz
	jOMpRhw7EqZ80W0CGcPYsf67RtpDH3gbf7WSMPn0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647024385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tmd/G7ey2PpYf9vJn3fdOwe4ebyVbS7yHj5P/aVkbAo=;
	b=kUUnbOnDNu1qL1VWU+JJlNzOtRv0SZ91WFrDsnBOAItsguFmhK7HUuZKTXqXFzAz
	fxKDk5EZ9t4M3hPYqzNiLjI6YL7U9ny3XliDWCLMKJ/qt6WQsmVdDhmFt+GUiUhyeVo
	jcsb+dN3ru8dbCYBKEWz8/z6pjY4ylfMKNsNcUnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a4dab4e-888f35b8-6f2f-4c31-8fcf-c5851752ca35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93575808b021aa372ed19a7f2a2090aa0a0622fb8954c709a05eb38df4a3e5cd
Date: Fri, 11 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647024384
