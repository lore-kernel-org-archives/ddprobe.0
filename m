Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4136137F
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 16:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648832219;
	h=To:Subject:From:Message-Id:Date;
	bh=Ihhuv4+5qmq1LDZ4dFsm8VqVB3GxbO5npGGeBDjQ058=;
	b=Z1b/Zm2izZudhZrhUApKM1lCXqvaVnVGfEy9gzg109b0I/oHTqa71qMlZ/kc7635
	6X/QzrsfKvsBjE0at8swenWHvMgb/vxs2wIHgSaX9SgX6owJfMPeEJvp5CJc/ffi2qJ
	hGJrwo6VXvFnupSdhrEqvdUYo+uR2uF2GPcwj7dA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648832219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ihhuv4+5qmq1LDZ4dFsm8VqVB3GxbO5npGGeBDjQ058=;
	b=N9uTGdCOnOlmDipG46cLFJUIaqw1ugtY06L2CDU3+yaqCleZtPyBuXrInMNlxR6B
	8Ikv+q47PQwU3ox8DujOykrqQjMbDU1N6pYOqx+bHdWCQkDN4T0AZYQCyxlWzJTFNLt
	RvK6xNJTZKS8aYbKkY9DDlmvvWDcj15Pk+5NmFE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe60f052e-aa4af8c8-1fce-4a40-9f96-df03e3be97ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22d1e957ebb22ccb1bff8ef132928213ad40413861725ab6e7284cc8d5398b8b
Date: Fri, 1 Apr 2022 16:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648832218
