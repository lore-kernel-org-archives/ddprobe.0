Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112BD7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645372585;
	h=To:Subject:From:Message-Id:Date;
	bh=AKdvcYuuIRuVqUWdoBUEhzsZQ7JFs35DhtsCtctdF0A=;
	b=KEyvH9GphreGVR2/RtsgPFdOwNSkcqEteWDa2oyAMbiz5Yl5rUKHXN4aKoTQ8y8c
	9eE9f3NM6vGHmSGz6Nnc253vJYQ13DykDxt/XmfT9aJuv50vxfOO24Y71IFMA7qqCjl
	LZWMpqOA7jY+XoLSiN6U/qtngn4Gq93WSfUEqpFc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645372585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AKdvcYuuIRuVqUWdoBUEhzsZQ7JFs35DhtsCtctdF0A=;
	b=BezypK381iz7kNhcKeZI+q/uDSWzMTcFgaN/zDWo4WAPaJ+vOnhzn1TpvFVFqviQ
	h5OS+ZU90nlD8Ndfixt+oR+iDnllEtnUqSE6viFKlh4ph+lK1AJgG5EWVf94aYxyZuH
	rm4BG+lNnZINInJehBHbUgz+la+KeCLUFMvId+i8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17d9338d-beee1245-df4b-41ff-a022-0cb240c4e5f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 087a89f5b9445014bc7160440e60e892e3e8a2bfe018d71fa898763f08b2579b
Date: Sun, 20 Feb 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645372584
