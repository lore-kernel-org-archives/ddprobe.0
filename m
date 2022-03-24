Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ACF7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 06:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648101898;
	h=To:Subject:From:Message-Id:Date;
	bh=0LrIN9NQow7TGWJSZGANnq6C4CHk+ihWJZshmt+2PQU=;
	b=O7YyjXzgcsic0VgbC6xbX7b8juZdELk/LYUC2CfLRNCUGsfMkWILLfnDWtf18y2H
	N3ck7bsV49J4kya7S9GK2DW2/gvqbmQH1JYey4WkMb7/TOVhFWLOyiTZ2uIUNczsCu2
	UUQBsRG6ixymSx/UHBlfSjKAqx/1CXywRPC6lCms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648101898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0LrIN9NQow7TGWJSZGANnq6C4CHk+ihWJZshmt+2PQU=;
	b=k5IHWRYO71+wU6bVKU2tPocwYJhkgIXK3eaIoIN/WnmPfo8uaAarrCJoqXUOyG4F
	e49QqVOMybU64Lh/DMZIYLXdgQxzXzZhuc2etS9eDdjTJSnskmwdsCDxsQPR0VpDd6B
	ZTFbi3d7648tJQO9K2Sj/3V7SH2RSapSRfQAbi/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fba8737e4-0c82ed9e-b585-4c3c-82b1-675ce5d861ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebd40f6b81401fcca940a8f18a73c7f758b52e79884f049089cfec73e6849596
Date: Thu, 24 Mar 2022 06:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648101898
