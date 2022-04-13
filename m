Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160487B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 02:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649815558;
	h=To:Subject:From:Message-Id:Date;
	bh=Z0zDbJcx4bR7DkT5feoqWilg7g++1jq7n8nM00uvn5k=;
	b=AAxdC2YRfXUCdHjE71dFUrU5pjaH16a/U64NDVZxDkbUtwSO7JTYjNfL+CNewm4i
	K6dO39NdO7doACo4qC6SJJW5sNVIeu73QLzLZEskm2VsAlJ2QuUN+6WmbfD5/ruCOFN
	26aB9tcRd1yvYAzcYMpGBsXCP/BaSqi6dc9tg61I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649815558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z0zDbJcx4bR7DkT5feoqWilg7g++1jq7n8nM00uvn5k=;
	b=Gs+fUvl1c6NTgexFV8K22nYYxoC5ZzY6vmsPfkarI8My1WqQzUksNf1JdzQajBx8
	R9jBX91AOUk654iohxEJ/aJJ+u976Yzq4vYrkws6BtYI+XvAy1w4zz3M/T6Xu4yQQbX
	23R55tcp9kqpbb+4WPkGFgxunajbOo6s+dCtn9DA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018020ab987f-16b79b4d-1e36-4185-a3a0-0aea4e5fed4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39afe2db806c29d2049d2a61745cc0d1d91990e36585c82b5ed696505208aaf6
Date: Wed, 13 Apr 2022 02:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649815558
