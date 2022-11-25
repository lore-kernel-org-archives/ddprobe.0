Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33CC2F41
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D7DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669419654;
	bh=4XQT+oKif0GUGqgy0ano6wIXXBCzg4/7HeLhjzCIixE=;
	h=To:Subject:From:Date:From;
	b=kKQjNm30uY2vvjkfuX3zQln3nTpi3zq9k2JHrLLjrRvQCvAQyFuEdTSbwJcrBU8uU
	 ONpnqtlSkQ3p5GBjcbCHUZLz78PFG/pmgksYYbruU6sGNx9ef/5MUlpLBsukSIL8zv
	 DZzcVklCkhK5VLy+gVzbkJg98jt1QXUloI6hpmN5OkHtr/WZnLdeRe/AprEt32DILa
	 B+klSSH9SAa6TBAk5Tm7ORFN4+zQuAxKgQeXU9x3wk/dnmlmpbiVniZi8PPV422ddW
	 j0/YmTp6VYrWA59cPP5R4qYBgFDmJqmAgDiHOuo8jPkcgsscflRAApN7whwZH8uOmW
	 fTBVKriKUXpPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F90FC43217
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941965437.14907.13835508130434240537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a9564cb33a71ba49f015389d74a28b0f5decf3edcbb9d3adaca9ce080462edc
Date: Fri, 25 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669419654
