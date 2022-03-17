Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633664A9F
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647552084;
	h=To:Subject:From:Message-Id:Date;
	bh=WPjZ/jDTV/wkh662Uhdi5yjELplXQ5dG6AJow3AUQY0=;
	b=hAjdO8fd0h8uIG8l/2nEM831NAi0VcPF79MfLBiV+EQWzKqzz8fDUdzw8DP8iBxC
	lB4J3k16qUtMvP/4INNahH3pr1A3vTwHsf/vHrNQgnovbR6ud+MJ6CzBSlulJ86LVJ/
	ElLCA1/VF8hDlJyq7U8XVuOZu6OgaqgDpCTF5uJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647552084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WPjZ/jDTV/wkh662Uhdi5yjELplXQ5dG6AJow3AUQY0=;
	b=GPpVfSJ5fOQlqub2n2zbYIRd9p3cD3O3u2jpNR3W9zYcWf7d59sJkpWeDd0WFa9o
	Yt7fob19JQ4l6S4YRsbSSCuoYLa33UZB6eRxasYlukmORfiLpuKXq+qt8TrXGQO22V7
	EuPpC2i4E0FGo4s5HvjeaxYmueBTLFN6Qf6j/MPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99c1baf6-6651be1f-0904-4540-866a-0c454f697e36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e33a068b7aa8b94bd30ab6476b4d549ed03fa95c94889253d1313a387939496
Date: Thu, 17 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647552084
