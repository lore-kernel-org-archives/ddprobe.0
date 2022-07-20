Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D3C7497
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658360812;
	h=To:Subject:From:Message-Id:Date;
	bh=wRlFVYAd+wL/HCWCiXDQCgwwiurQ3no9a48lArrupnQ=;
	b=AZwvSNLZjcUgBLCaRIcfWi84J4jOPwFxoNL6QuEyhrJa3zcNksxgHUu5tWga+Hg2
	ntvSQ5PVHGXAB1tEMzXrV6WwWZ7iqdPy8EddYhFj0vNvhbGRsdvuGmZMNVVNWjW57AM
	qRdvzWDML5nIlpnQXlkJzERBoSjGz1edIIwi/qHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658360812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wRlFVYAd+wL/HCWCiXDQCgwwiurQ3no9a48lArrupnQ=;
	b=hSrepUN7LN7Z9KYzFsYVjTESIMO8wgJo5JWYarj11ftinsK/vh/2Od8byry5yt3e
	YLD3wj/HDpyOJIRU4MNcux9WAzbbERR+QG9X0IXMM0TO+4LhlwjpZaN+cMAGqw7w/9O
	BTIdYy9RK2GYpoHV3wFEJofT3yPV9MRY8mLspGUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821e01d2e1-3a287fb3-63d2-4e4b-86a2-53ca1f2582ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec063504f60d84d326206d75e2ddd7645fa1c5dddc3ea948f31c9f21936023cc
Date: Wed, 20 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658360812
