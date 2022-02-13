Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198E97C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 22:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644790807;
	h=To:Subject:From:Message-Id:Date;
	bh=kDT+FKbG5fKj5/JQc2j7ykWIFN1q0xJd+HSl4HKv8A0=;
	b=hhdePpzeuzvE4xz+/JL00hOCB2wYn9auSE3WoL3AE6emjlRlT9n0qjMZzJssrRRI
	vkWZVWLnh74Sx4bcDD7Bd4za7avtK0y47WtY7foOdQU4GsZxr2avSaZN/8CoBldcRnh
	CkPYdUT0Q57Upr7rStyklpWCr4p2FrP3A1JnmmPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644790807;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kDT+FKbG5fKj5/JQc2j7ykWIFN1q0xJd+HSl4HKv8A0=;
	b=PA53vCGnyte/Q2Y1jcwupkv+6MRpCj0cBXk3AEQYtjjDGLZfCM3tx4iDizAL/YU7
	DVhJT/9mXY4Hq1BNK61osc0eVfkoP1QtS4XRZue2a3zlU+0LmL7J4Iy76b71HEk41iz
	ZV5qWfUb7LGlp5sBVnsrt7DvWhT4+jqfHBnRbjJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef52bfacd-b69f5a21-5e51-4b0f-99d1-fd7d931e03bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44f1033c5285d667693f5272a32ea31ce040457ba71822b10bd6b972dd3fbbff
Date: Sun, 13 Feb 2022 22:20:07 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644790806
