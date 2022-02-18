Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A3348BB
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645178785;
	h=To:Subject:From:Message-Id:Date;
	bh=XAxsxUk+aVUCD+yStFyoPePk0FqPTLClHiTWUi/U0nA=;
	b=XpdQc6tGU4tV0VGisPO2QYrACOsF2QxBD4h3iy1/IO6HqyIAt0f8qEAHRHDaQq3u
	j6MOv2lcH9tOGAT3QL8EC5ZktBWRQvX9s8DdpJv1hKy8hszFEksHRuNu2FwXfEg+XkR
	yQ5UYgUXpF+28LSuC0EwqzUIZ8d3yYVXg9ZMNkJ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645178785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XAxsxUk+aVUCD+yStFyoPePk0FqPTLClHiTWUi/U0nA=;
	b=l4MU+RMtgkMelFI5Difip5t/xyrXDmvUKoeSjB0tV/7wtCv0FEJBZWXn1YUPo8B8
	kSqkMsptdtpMXLTZLkzLC+1SbrZsp6VlBmrz8hfSahQvdy1GeEqW0vB99pmORY4b/uQ
	FD6c0WjcmmH1nOTMgbPXWHecF2u8srisegcnVBHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c4c0c15-337c5d84-068f-4e68-b7c1-3ab5da785126-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b77ee53eba78538cf35b182f0c7f8d41c90dd63086609b257d96b48d8c64f59
Date: Fri, 18 Feb 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645178784
