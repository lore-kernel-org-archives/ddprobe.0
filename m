Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CC41843
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 22:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652739419;
	h=To:Subject:From:Message-Id:Date;
	bh=JDp5knbX9TiZZUUhOkedZfivmTv5B7HBHFVCcdqW3GM=;
	b=OjjpNRi+8xE0wej1xjquHfpjBscwieDyi1+jbUBxDHmBk9r60VPd7DpM7AVWoXlB
	tYzqL5cjMVWuaoZnnZxUKnkLtbMa78+rpw1Nmt1/3Cu3dxZXRWOtBfiz6be8Rq9f4lM
	eln+Uu/Ez4gZk8KJfW0hpJMt9E9vIWCFLh+qQNgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652739419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JDp5knbX9TiZZUUhOkedZfivmTv5B7HBHFVCcdqW3GM=;
	b=MNcM7gcylWprnZh7doKGx5jr4BeimSkU+HAwj3NQVnWKuHZhSGjKdeN7EkgK93gJ
	jnP0nngSULXSNscI8HApf6WC2TveHx6dPQfLFgpUcWmQyyLHWT2Vtjxj15lxEyi891Z
	BgrnGIdEMM84Tjx08v+j0o0OSgnL38qlL+MVOMgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cef22cb2-346979dd-68ca-41ae-93fb-d7d31f5b1f8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 161948d30d18c72b472df880cb179334f003aac27bf20b3106e19f72ce7e3805
Date: Mon, 16 May 2022 22:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652739419
