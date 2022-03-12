Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0BB361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647096384;
	h=To:Subject:From:Message-Id:Date;
	bh=Elw6bh5bu4ELYlCJi5xw+xf0gdhoY0nZGKPGPIbv27M=;
	b=VyRm8CXokolaRv1Vz025/uuOmBDTfpErxV9gTbul20VBhZ3mgGsmduW0BNpXB0Kn
	uALaSMACZiNwYEWJpPJp6T42SjfopnUY07TEfR9jWTPCB4YiEZ6en8uM6+3uPwPpM8s
	8xaSmWzsMB6RhKruatQ3jLsm8uZ939I1tEJDaS38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647096384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Elw6bh5bu4ELYlCJi5xw+xf0gdhoY0nZGKPGPIbv27M=;
	b=PUkZq6PhJOxdi83jb/ygvN/9534EVq1+inLLY+uLwd5JDF/0DjSp5Uy9Tt6r/PZN
	oFRTokntJbPN4vYT4cnHRip+tCvqWKGNPCx1RR9NKgZHefcGLx66ps4Av6RwmOMBr5F
	3bE8QeJmTIOKtL7Skd45vhDoEpJGhG4DgTyxcEwk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e984ccc-a065f278-808f-470c-98f0-787d54678b69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff9843bccff3f07570321e1bcbeb5064a7fec9ae2c35cca10ad118a12913b304
Date: Sat, 12 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647096384
