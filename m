Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88AE4602
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645128385;
	h=To:Subject:From:Message-Id:Date;
	bh=5ryVv7ZQ3FuYsyUpiKMZ7UmQ2aiyPUn4blo7Ks0e7iI=;
	b=ZxJ7b2Xh2UPEUoluEck+WHEt+2Aiy8ciuER/02ms8nfx77Mt3LOTGjloCFfoyexz
	PFQFDEa7YFZLwAoGnqGyjHht8P9A9bcq/2BZPmIsu+4mF+8CZ2dtqMnNnlm53/etz8t
	FrYkPMLP1a/8/IG5sqtxOwgc5To75joiwsfLnjr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645128385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ryVv7ZQ3FuYsyUpiKMZ7UmQ2aiyPUn4blo7Ks0e7iI=;
	b=A4ZsN09c8jLMmhjHrreReBvFO5cy8JFKaVJknTjGexsU9Naq8yK4mLOD2i2+7X3A
	wBRfkd3rFGvl04yb4RLYW539ik+JI9QTQZ+e0ZW9zxkdTsoyDXPDJ0OGpOCzSuh3iq/
	qm2fzO7E0/KKRhudhy3bPdYOsiq1cp8YXOS2am5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f094b00ff-6f45e450-da19-47f9-a04d-1ffc3734c871-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 248a3c57b53596464012c5cce437a3133c329c740050e6539cf36bbe43e05b28
Date: Thu, 17 Feb 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645128384
