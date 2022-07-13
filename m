Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175EC6AC0
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657755412;
	h=To:Subject:From:Message-Id:Date;
	bh=a162QzyaAp4Jaor3DM8kspaMi4t53UUtUT+js4KAZj8=;
	b=UyZTiWXMy8B5D6fNNFG/di7+EF9uWDaflc4HNmzveThTse7gs7Xi8gUKDlZfuE/7
	5N0QZdsDash7gk10BY1rXJrMIGlwds2B73souCzd/tO/g4bRJW45IEoHE7G/vlepq1l
	qe8zlHLdvE7ub8sfPbRyvc0PUeNRKM7V3g9SjNUM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657755412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a162QzyaAp4Jaor3DM8kspaMi4t53UUtUT+js4KAZj8=;
	b=GxUgGDFMGfaVfhv/+mQ3i3+wwu17YGDjy0ZjDnr0dmHGJsrPv2uJP2EPNcPO/FfH
	Ih5ilMdozq+GYL2xoyWVgvaLT8/yJ/egJYCY5EctmRSdvFStXAoIFT4vONaazW3vhno
	qeeHEgymwpnHudcGEVVRH+I/iv2Int721tkLqaBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9ec2734-6665e0a5-981d-449a-b6b6-3c6e3881e89e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8285993ec4cf08006887e4846a6e4de7b214119cb7ecdac3c43efd6e69fc2b68
Date: Wed, 13 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657755412
