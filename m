Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6B715A6
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 01:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E81B8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 01:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686532385;
	bh=2xLQZl9sD78OVNrgrtdntNfHJRrEsZZHbZ3OGDlaR9Y=;
	h=To:Subject:From:Date:From;
	b=WcVv+8XN6MCt+S8kK8+2lFoNK55CO2uZlgCT2akUELQwcBrQ8HyziJ+0GUCCwMxBB
	 wjV6SZCswYdpEl9aOI+7GT4cwvXVoNfzkFFrvRJxf6+gUTtORL8CxNmhOpovR9EpbP
	 Bi2egQQYpg6+Cq7sPHMMmwe8fJW5Is30WlLJlUXOvVeEVOGtlzvYgG2fqAkIVjjLiF
	 WgPyYjzMhz9MdnOMfWO18iM3eME4fFfEdOm70pryrzanoqxFWgtYNDCJiD4JsQq6Xs
	 GBefRBuOzfm5xifkpQSwJpMBWcaq7HEcAns5peJF+FrfQssNV8qBaeZC3xFurFWoG2
	 rOdUw0W+gRu/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C39E4C77B7A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 01:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168653238578.16404.6611283515629555585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4915918dd8396f2c754638144e88679aaa6ed9509d7a7ca353a617c2f3a48aa3
Date: Mon, 12 Jun 2023 01:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686532385
