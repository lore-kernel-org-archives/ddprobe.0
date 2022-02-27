Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 633DB2F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 00:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645922184;
	h=To:Subject:From:Message-Id:Date;
	bh=Gb93MDfCyphViIYY/SobYIRlTm0xBk997SKbOUf96Mk=;
	b=DMDbBqnBT22fjAf1lx+8ts6+r91lHLI9VV+eik2ElxWqjWpCVMFEwm6FJ4W/IRiC
	FTEz4ZQwrRcxRyKWGro3ihFt8eQxt5ItMD8vgcYPu3er2LS4t/wov0NPFZXqJzwvHvA
	00ZnHmW9aM5/1FeOgmgIfh/3Y4KBAxXz3mpw0IVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645922184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gb93MDfCyphViIYY/SobYIRlTm0xBk997SKbOUf96Mk=;
	b=QP4+1UVOiWwOrEvlwAHQRX7Fgxw2xRf4rb7Anv1UMUKXiliuu1s6YnDrOeF2sEFL
	3GnqQ72REw2df3kDEVHtv/g9QmsZ26eInsf5HJJIKJV8SNPXGQZKQxmusjCo79EanJQ
	bYwxc2q4XLPL+QjxJvynssWInUHcxMa9J94sFwAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f389b6e29-d8f3cebd-c216-44fe-94a2-598be09e009b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9205051390898ff2cb86b54bdac789c81acea156b8a23a891ef6e23cef68df2f
Date: Sun, 27 Feb 2022 00:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645922184
