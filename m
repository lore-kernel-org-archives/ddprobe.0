Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC57130495
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712269697; cv=none; b=OGOxUMgDeXldSjF9SF7cn9jlQQF47YIo9bBblxuKzCxHD2HetL9/tz0NJ9N099GHOTuLQCWw/bYjoYyZbWy6DolvLd3tjbYUrMqo/mXc5LQSYNw006tqVeGH0kZqIhwFZNztUCpJpVuQTnL51T3ZhK9xGu6xSObLn5U8e/v20XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712269697; c=relaxed/simple;
	bh=EatbEz6AxpkXC28BDomN7vHOTUPu9uA7gHug1MIrtZg=;
	h=To:Subject:From:Message-Id:Date; b=QGyziMbYWIY2m+/zrXeEL5zX4URu+rzgG6e6gopHNItoJ1aNg9/bOTkATtI9ffk+pEnXtRDBx6gEGzmf/E/feW1YEO19/SGzxNo/FtJhTC4yjvghngOLbIdHIm0r3dCeeeTQifUO+t6Sd4RGINE1FZcQWnx3sPYLIf5WcXEGNd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1rEpdzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1rEpdzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A1CCC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712269696;
	bh=EatbEz6AxpkXC28BDomN7vHOTUPu9uA7gHug1MIrtZg=;
	h=To:Subject:From:Date:From;
	b=P1rEpdzpXhsc94byEZR/mMzgoqBicBU0KT0iTe+6knVFp2+xG4da1PaYD73cJ+z4B
	 fXN5t+xo40DZZPr5HVxlzEQn78JPMkz28kRNQgfWVmohRzD2TLRWZnY9zaoTzWeywV
	 uXdLxYY2hBiprRsijr8S++ET64T6/Kz6RNBD+SpGaYvnhIZQLTcR5D0x1TXzqky1Bu
	 i14f1SDZiRUB1e/pjVaLjN/l8wlHZDJwMvy3dqBkqGYqCwbzkz5c9huR9qunnpfIk3
	 UrzrgAzJoPNiqwqfjtkL8tRMw2W+n2ncg1tM9TEfbiPxK9vRDgDM4VmbcNUJqWPnB6
	 1ZWax2zk5C7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 756A8CD1284
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171226969644.23458.5601974398559820567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ec79f6311fd3758a9c2a4921590eced370f314dfc88e62d74a5e54edfca203
Date: Thu, 04 Apr 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712269696
