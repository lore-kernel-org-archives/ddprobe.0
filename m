Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C775E12D83
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7708BC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668038454;
	bh=QweAdqH88V5gkGpVhOUw0uw1iXKM9NH5qCMyDWvgbI8=;
	h=To:Subject:From:Date:From;
	b=p1Ma8AsT6jPJFYXXHtZwypc3nGKCdjSxVUmN63DYKBgbAXxwscgIfhfbPI4CzAG1N
	 YyDyQYw9Dvyi4T0uQ1mHFp2sivqt9c0JJR1GNMTFP/u1dbmB+xCcuAzHZ14aWg7alc
	 77Iybj/oNdmN9f2YbqDS6Y2yPrmqKUlKrKOR/bnPWhgxc89bvQRoA1QqBgHBs80t96
	 2IXQbA4H66uBkCJcPHBCs7LRPddIYbawitIhe3GwCn3W1vQ5LrtF3aU+dceTSek2wf
	 ali5baL3cTRuS5OLTqJ8tDnx92xefqu1LI7DKipVFKYSfv3J5bTg+KsvlpIzIGmtA9
	 LXDU71qSOC0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 597BDC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166803845435.17535.11147207563816172282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cb55df86482c9169d48eec8e183c91bcd07883789b50c86497c3e0f5d90d8ad
Date: Thu, 10 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668038454
