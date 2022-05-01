Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0F623CC
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 07:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651390438;
	h=To:Subject:From:Message-Id:Date;
	bh=JLXNH+vt+7UcGWQqssVdYgqSHbVBeLcPc7hoQ3PVA9M=;
	b=c1ZVkHtD855bPEW34F5blBKVdGLDTF12B9Eb5tF0HqoUPzT3qKCgY6KJLkOY7rEB
	4vda8jvnJ7z1visHdf8stzTEhkGb2aF3zhE+UP2LL7RuG5jDM8ROXrOAG6xVzvaUW4w
	4YevDTvyoAZN0HAIIKI+p0nWbFS9HO3FPUORUc78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651390438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JLXNH+vt+7UcGWQqssVdYgqSHbVBeLcPc7hoQ3PVA9M=;
	b=GE8YzqZPiwOeHj3TMiRaDiofNYIIv+sYq/8h87EBTtZJY3n/n2509OKM+ir4gkjA
	jBPeVNoP2sS/O78HlZMf6KCXoqj6Qzp3PaQ3EfCyBmX53c+mfA0dQlFYOHvFuVG3SQN
	QAyuLIaE3NpTHcOz9W66yS+riaqqggy+zlRqQQ90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807e8a5b71-4a65e046-e078-430d-880b-463dc1ec1ce9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f33284614175277010f441799f7ec15cdbdd14629819807d2f1e2dc8e06b512
Date: Sun, 1 May 2022 07:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651390438
