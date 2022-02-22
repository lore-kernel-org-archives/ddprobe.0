Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920042F5C
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645560085;
	h=To:Subject:From:Message-Id:Date;
	bh=XFgTsti20gE2j40TY1m7hwnO3K1+wI+W8Ae2xK+CSHs=;
	b=bV1IGOiRavv2cn4cIIO0/WaeQIhgGm/zCNYDAce56EZJwC3pNGbNZWPGEMQBJCr6
	lId7+mf6bPF0ebBLZXNiYW2gOD23mOe6j5mF3OW8/67H0LoKEw4qVbv5GLSi117S6HB
	cpyjzvzgjD4VXDnJiwb53s3CJfpEYKist22syHGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645560085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XFgTsti20gE2j40TY1m7hwnO3K1+wI+W8Ae2xK+CSHs=;
	b=Lz2jzMEZYBMlvBYUYh+d4T4hLQY1bPpa4724XHiZdW31BPaHVOPakXGsGB0mQjdy
	1Bn9bzoBM/JpLP37FcPWX/wjTFPFl1ew62op4nJwuP0+8viqlQGbWXklcS5Hp2FKi48
	DDUGP/ZX+uv7tbq3xtXqy+WnbQRQyTr7T2L8n4Go=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2306395f-4ff054a0-8fe2-4178-8f10-253902cb85d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa687d24ddba22d0ca40e0ffa438ad788de2a658480dc549ba4bc336194e14da
Date: Tue, 22 Feb 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645560084
