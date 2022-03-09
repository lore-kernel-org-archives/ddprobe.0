Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933E4644E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646807484;
	h=To:Subject:From:Message-Id:Date;
	bh=0uS43nuew+1ArfME6l71M/546CKwWiBT1/9WeGeRT6I=;
	b=Pu/8NuaN7y/mLx7VsBUD7gx+WJJkWjW2p0nMeE//YAhRJCP2XDQdnfzgHLMUEO80
	2r6hNhTHx+73seuTWvQ/8wxwwAcUWeTL0FPbqKNmqzy+wn/SUGmNoR/6fYKd4PD2w+b
	MuU38g11WdOMz61yxKUsgE3Wt+I+xT+IF+WyNyvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646807484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0uS43nuew+1ArfME6l71M/546CKwWiBT1/9WeGeRT6I=;
	b=Kea0k6niy9AoM8nRJbmU8Iz2kk5IE5S+p0fXDmo3EsTl83MD7fwseICGg0Rd0ZFc
	KqhYmfWE6efu5ECR0eWm2CszYVYQjyqcylPyoEmedFnkqoCCzbH54WsetCUBsoHyH+1
	8/ouVsSRQ5NoiAKZYBWGxDAdFx8p5LmlGicRRTCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d60094c-dec612b3-75b0-4e90-a2ec-f29ce292fce7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1d0c336db86645f7ab5a596c8c20b64e9b58ab3abfe2dfbcf40ad0581993780
Date: Wed, 9 Mar 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646807484
