Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE71E13AD1C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767287033; cv=none; b=Bl4sY9fP217xtqqspacIQeKMSu1IAZSmsufOYRN//RFyzWtJMGBWKtMGmdM3b6gJ653igiUK+4gWU6n7cdWEUwX1OZ0S7Mji/P00yWr/tx4490k9DXnO6JYnVGCjI/FTpL+rDk6jF3j7byVfOjIPUEhV51QlJn/r1JFjIPAJ0h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767287033; c=relaxed/simple;
	bh=4RNXPCS9Ot1ESUpZmWgO44GHBXmaVTxp2MAcI3hfg1c=;
	h=To:Subject:From:Message-Id:Date; b=eQFQiTT+1kgi38wnnAWsj2VN9iW2e5losNPVocsw0npbNFm7zJT3sQbdk2Ugc8R0cyFuePr6dlUOzaliXRBuZ6MbEenB4MTDS251plAjRy/xC3FSE0EstZQZsHV6IgB9lyPTqDtX0YBwfghqRdMk0qvlNn6uyFmuoj9pBLyi8KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoRUHbT5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoRUHbT5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DC4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767287033;
	bh=4RNXPCS9Ot1ESUpZmWgO44GHBXmaVTxp2MAcI3hfg1c=;
	h=To:Subject:From:Date:From;
	b=VoRUHbT5vQcxkahEGqWsI+12GyBdFyBUNii0zQLJDdr5QdiK4Xg1y0AiSv+QdpS/8
	 F+2xxSLdlR8o5fxEXpitossoMTQR4iS+fwI40Jq6oYZZDvP6+MI6nzIPvtUR+BvRNB
	 mFH7lClgGYD5xo5joJ6gMNR6rujGxEfoksgyusl03PTWPeIHdiW/rl7ulnac3X5kGo
	 DdIiaqNbIgW9vhRhyi1QoIQjr8lnacAkZ/+Ok2To0jMF5/OYM4FtjvSICl7GfPbBRA
	 rUWmJ5Zi+4MmYv62WkzTxYvdzfOlO+UipVBKC+jK/R+yf8SG6q1inGwKDNzxkvJ7JS
	 /HDkVfrxWuovw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E79EED615
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176728703357.22653.12434200135806934639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbae636d445af40793df6f93b93281dca8fd321100e85e1818bddb6f7a9c824c
Date: Thu, 01 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767287033
