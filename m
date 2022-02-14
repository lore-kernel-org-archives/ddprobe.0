Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8375D7E4
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 05:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644814831;
	h=To:Subject:From:Message-Id:Date;
	bh=VI+sYzT38ScB+vD3EIj2WoKq5HEkzu84oLSYUZ5VShQ=;
	b=SdAYq+ztw7mR1eUREOl5wjkZVVe6nFATxflO6+rQqKYuNV4UUb1i0mzt3+WJxzAo
	S63APACb1Tvi1TSO4BifeaFUnug+SyzGZVQ6UEAcKd4pSSFXb/++PaxWv4Ngb/53jn2
	p0TKWGCZxcO1YP/FarqCZwiSlF3W3EXcaDtA1JEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644814831;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VI+sYzT38ScB+vD3EIj2WoKq5HEkzu84oLSYUZ5VShQ=;
	b=UdgIiUrROzONla/4125SeFfnsMLXM9eD9xeDZYsxyvcaykRMj9CRgaj8T6IecxLY
	tqRr9v9rsfF3ptkpVA24X4McKXaCFHaUP61nzA4KamtMIgXZeJWL3xUiM6TaJZ4AGDY
	qlU/SZAlc8gIpHlNLJPxfJFZVCqqK0MAAy3HBNbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef69a9078-56ba9bfa-13db-4d36-a218-3f18062eb2d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5695314af0eb6ad901644794a614e18acee69a9fea4daa8f0e1d839f8659662
Date: Mon, 14 Feb 2022 05:00:31 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644814831
