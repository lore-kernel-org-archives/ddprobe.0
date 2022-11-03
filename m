Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0247488
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 888DDC43141
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667489454;
	bh=CrtT01al0q4Es0bo+ZYDxX9W0ZKbQ8fnnimH/wjzxhE=;
	h=To:Subject:From:Date:From;
	b=JMF8dpY7o2Wb6WqKWSQpm/L7ffeTolok32jqhhf1vJw+PS4EXdZwb70/We15W3KDD
	 itG6kAJcL3+pbnVF1xh/FevtWWLzl8jkyicHytOkmOOeLwQRTly0uFqI3SP2JFNyPC
	 y/36aE2nUKVJwyCSsc8WpBRWs8RzNrZ+vQD3rj1IqP3Fdkjd4PxNEFs1ud5dh8SUGF
	 l7/GktgdK59rto9c35FWK7SgjZDqqWrOo0huSZfSz9yP4T8MFJfls80BXEIoLftFDN
	 r/B+elSQiCkNGdpNaZDAaMsG/LTtsCZycrYgE7tWAnBVoJ+fBnD4YlknQ6qCvoB7na
	 p5tPo6n7LFQ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 697CBC4167B
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166748945441.24190.10540363979585951854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f317527627f45382c0a549dfecd9e702ef4b22015162c41556b390a98dfc813
Date: Thu, 03 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667489454
