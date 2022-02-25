Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841767C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645803385;
	h=To:Subject:From:Message-Id:Date;
	bh=M5Pt5OSpEhzat1d4FfEkUwuYv6BrpvCxR6joHKC2Yx0=;
	b=Bgx7d7syaoPM1DJDlhK2qCizEN5kFtPyFfnY/jsMQxGPCp59W4nM3vrfPgv8hjsy
	f0hhw5JRk+bffmERbfKHrl/xOHh8nYRZmQy1+FqHrQrgEGHNLRIeQ9r8ZYB4yQoC7ZM
	PcxeRW5xIpMlCAiSU4tqW6KTUUXrz8e60hXJdkxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645803385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M5Pt5OSpEhzat1d4FfEkUwuYv6BrpvCxR6joHKC2Yx0=;
	b=iw2qdEIBAa8eDXRpRZuIA5tZu664pEaEZbWhL2/jFUC2NlKS/KKzllHpGPKLuEDg
	qDsRhmILG8ZEZKwoJMKTj9BYQdLfB7LBoQwb6Qc6zT0gCcT3qaUpdn8f/5rKHLWNdRs
	xaIS6o3ll1n+ko9g0rctFRD7k+t+UVQHeF/0iH54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3186afed-46202f9d-6c08-4306-983a-3e2c25103a2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f78678511a556845f0290792a88675a470332ededf67ac8b97599716bf671d37
Date: Fri, 25 Feb 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645803384
