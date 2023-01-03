Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F258466
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CA61C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672761087;
	bh=2ntIRUZwXmLoq02/zGf/ivksEQNb8rprbSq81Ftm0u4=;
	h=To:Subject:From:Date:From;
	b=QtR6bY8/IcjslMfYyqOOVtsbteIWV7o9YbOH5ezOqyA9+enR2JpYyfbFrFQ9NZBMA
	 6VdslzUdws04cY93E9geX/pAJTyfWIYI+LWDNRAwGx2GQ3S9VgRNXdW19GFVJYyesY
	 DUNG0rXWKS+bMTxF23FCdci/Ze+jGYmsVMwjhWyZWeJtmTYgPekJhBWlVMB0xE3R1V
	 /6cMhQd2YCD2GkXYkXUgfpDJGanUNrhtAozx9fDOwvMXNWXoo+N5MS+yMn1wON9eD2
	 wq3x4d5lcmCXzJWBRN8J3RP8KLLKA0g2vZea00gaokiO5GHG01kNgBcsdpF+b/ue+m
	 +xhIGQPfuE4FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73BE7C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167276108746.12402.10660363559835143894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13c8af0b7d64e7dbe66f4302fe65ffc8e5c1863900072961a38f3848621d0e5f
Date: Tue, 03 Jan 2023 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672761087
