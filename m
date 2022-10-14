Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0D063A
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7306EC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665738053;
	bh=FykZ+I8d3gpurAAhkMOYvNcUKVJeEFKpFqLGmRx6iGI=;
	h=To:Subject:From:Date:From;
	b=TJAtNQsWRsfEnDUGZxpJKT8vDm04WqL3atFMVZaVAVGzvtTBpjc6zY4gWpFa46aqX
	 iL4dsPWxIlx42gPoVD7M7ChSkDOqJXG/TeKwjIOz3vq16x27d/WLKh0DXskuPnPYbj
	 QLWMA2oqUIUwwNpv5UxJ/KV2OTZYJNp/TMAlEDcuV8KjC/i2LadO+sWGSvo0NjhVvZ
	 vyrjOOAU4moNruz1qxcO8OXAmAnIqH86yxqUfQet43AxOlz4a6hYXEp+rcwlD9bwBO
	 t/IoUQJIofe045g4ivyPe4yRWvfFO24ce2Cm/P0jBAqvmo4NKfv5I7aEl+MaTds66m
	 FaydmU9c9NKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5552DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573805333.18695.13521380300957215385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef1933ce46f4e93a51a8b0948984913e1e6390eb8dcff04f6daa9e8d9f4989c
Date: Fri, 14 Oct 2022 09:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665738053
