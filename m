Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563FA20E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647714084;
	h=To:Subject:From:Message-Id:Date;
	bh=sSRsCeSCIOamkjzZi3Z5aVmwjOyA0/gNNkrY2VaFrBM=;
	b=VLCZHNZBssVoISwf9eXELQ35KrtK/rvEfDG2pTMdnbYqb9Y5IO470SWa2b5GqkiW
	GJT4UkjwOTW1jv7jkTs/zTIawt7ALYwrezWObgnzxr6LsJlXmAEehTUC/JAv+JHGdqr
	iNvJ683YLcUg4GY5e8FhO8UUgt4M5n5uQUVQTf/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647714084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sSRsCeSCIOamkjzZi3Z5aVmwjOyA0/gNNkrY2VaFrBM=;
	b=fGPXzL3S8tj5CtZbrpSIKoDn1LmD15onmDyKiI8q9OwhB9fu5+vIsjzrRQy8slpt
	lWvYUuJlyjTJojYHdFcsG32mfQUb9BxzhSeF7SngehytZ3G95pot4MR0FnhCa8wM87u
	6V8SDasCar1o8iOgZUk2OIaoBRYrIb3K41tov+sM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa369a7a3-133c8cb5-5996-46e0-b927-beb7cac0ff8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 619d4de2c1e5ee6c13602de70fa0ecfd735839f11e03fb22cc68d636952c9020
Date: Sat, 19 Mar 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647714084
