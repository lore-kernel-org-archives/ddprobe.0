Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8CD4429
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BA45C433B5
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665699653;
	bh=7IrI20i+BtcZBwfqEWPy4mDgvYyYnT0wjsD87GsWZFs=;
	h=To:Subject:From:Date:From;
	b=g2YXh7Wykc9ti+MJ4X2AOHfnDj5wBvEUXFahxUom0qcuSxV8LbW9VkeofXXbtapNa
	 uhLAZT8yRBoKDcjGIrZHluKbRuSam4R4TtedsSul0kIrU+YsDjGDmklMS6QlFXQtuA
	 uWIyyIyF5qw9LYr0yx8x/LHpy9LJ+/Y9t4+CG0wwLDHgVBI1XDkz8lhhYFO/A+3QlA
	 5GUT8mwzBr7C8XCiy9nZi7ppPnBEVyYLg1WAg3LmimLkm7neUaIjlaTUrfKzbkgduj
	 6DKqBpmyrtKQqYkr/fjSBXex/MERgZRKnoEM9/0srcxlZ8b0I2LDeOLz2mBavHbHQZ
	 0eEIvDJlvlnBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DEFC433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166569965332.22412.4959293486286629763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08769b228b7c985d36a6b642dfb6b55398ee797b684863bc3a6a17de23d9bab7
Date: Thu, 13 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665699653
