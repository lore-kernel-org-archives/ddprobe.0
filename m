Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16719A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867469;
	h=To:Subject:From:Message-Id:Date;
	bh=28Nv3+yeirNzu+ZraJbLCxz3Z0x1ol9JSk/iOl6uEhg=;
	b=CIM/XAzruZVxfp9oabX0Z//bOa5btNX59U0yojpVlrrZrjz9YUglYekoYTaYXEPs
	WfYpkHIg8yyh0oN9H8NEPDMGSKXPkqOjB6hImgj07K2zyTW7/0WeuC1esNj7xJ/Ivjo
	wbyNmzjEHNs+AehPDvs7nvx6eXBt1mMMjE1ssRQY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867469;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=28Nv3+yeirNzu+ZraJbLCxz3Z0x1ol9JSk/iOl6uEhg=;
	b=X65yM83pugDNHdI9Z+Hn2kEpup1WtchniLArKvO7nLGBzCOQKkR7su8nCoP7b7RT
	aWTR508nl7Lf4P0zfkSMtWfBr3Hqsru+IyFkSLBOysogS5BhgvrvOoRCwmV4Hqdty4o
	WIBJapRy6JKC+bfyICW2J4xsVyBdsa2RroW0B5+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bdc141-f2d941af-dffc-432f-848b-5ec67fa4a40c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecf0f31a932d6f9791cbddefd5477df1f64396ac524d6d508d653fbd8cbe787a
Date: Mon, 14 Feb 2022 19:37:49 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867469
