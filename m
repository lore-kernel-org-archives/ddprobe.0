Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFAA4A49F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74651C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669674054;
	bh=0b/gn3MkMvUQqvxtGqueyvTmOK93nfFBgvH0Ja0Cxgs=;
	h=To:Subject:From:Date:From;
	b=ABO75sVDAOusT7uzShyrTHpZzQ9FZETD1TCGTtZUdhc6AmfZKvUs5fU6mIoSPKqO9
	 JLgt4K6XApJLhfuJx2rXf/EuMxHNRlZ7iEoKY6BZPEZE9O4mPzZGWcfYnM4ZcUUsfM
	 iQald+LRjFS5g/lRqCvCiuDwdyfWGIVBQWNFfz6hLO0a5K+DYprBQIFeWq9SyWhKS+
	 BUox+MqKc4r00w5Ot/RjtYcb2n47MKy3Eb+2gXCTgV+FZbmFS4fZj/gXgj5uB1PKpp
	 DIZ9kieZQM3MBX2XCGtW/6szwS3yaUXcAR/puNB7I1cmWhMXTJpvdwoC/17OA2JMBr
	 LpPpvtwsYKTag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D57DC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166967405437.18644.4490711762634664759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b624b72b69c9dd278ba4087b19fe9f70e27d0554f0300894893e37841215e12
Date: Mon, 28 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669674054
