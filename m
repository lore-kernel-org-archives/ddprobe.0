Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A48E20E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 03:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645414884;
	h=To:Subject:From:Message-Id:Date;
	bh=CZT39Qls+ENxWUJmZDikb9/x5a+r2ZrTU9mcFKc6Wyk=;
	b=BBvp42Saq+GNhMinJM4lFkw2fuUPT/EC1dlUAFT919ONmEeAzTlChOgCWyVcQq6C
	vjD5duZXhhTj1ay3zpnkr9PvWvQ1o0kmJPF5nj/LMqrOJe5eXDr/nss9BmAX/X5zljk
	QbJWD2UCt86QX/BVSz3bO/234COHvxd7DSSUVMcs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645414884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CZT39Qls+ENxWUJmZDikb9/x5a+r2ZrTU9mcFKc6Wyk=;
	b=TwtyBStRQ4V+W6IWgg0UwJJtN8J6lUV6ybRdyUiQ93Q8Bym/LgN5FgA1LWRjRYYl
	cKTXGvXQO+e2UzN+8aRZrJt8qBWdAyg2niAs40vhb5VKUNZ9iJmsVbSXNMQX+x8kSrj
	5YAOd6mJcjqqE81vs4v1HEfC0WUpkLHVxWRpYBwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a5ea5ee-706165d6-d863-4c8c-bd72-2d5ae18fba71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1394b9540b5f57873f519b3119f69c9273eea2dba573a68169f43dc09dd3777
Date: Mon, 21 Feb 2022 03:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645414884
