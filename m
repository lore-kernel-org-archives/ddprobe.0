Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8BD17C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BB27C433D7
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664799053;
	bh=jfOHGd8TlIoQcF8bHIDA+5/u6XKcP0kbaYYD41ZFEmg=;
	h=To:Subject:From:Date:From;
	b=dyqB62AjFjydYn1K1AMpERN4OL8Lto5Ob0556tC6sfDvXuXyItLKrv5cHigztr+Im
	 BtQpmQG+c4iihoAvTbHt3rp3N1IcIxBCCMaa+S4GfYGlF9BphDCsIvDcLiE50wmN0/
	 VltRt6darrFBmcOj/hWzmz/o8jCj1kv4h0GNQc0Ka08ys9Q+hrfufuCE0/AV9KcazR
	 BJfVOjpnVegK6uPkkjRq2nGdFoYnXmfhSz1bQ5DXv61Ci3d+FswYaXLl+Fz0rLkvaN
	 Tw1n/Ssw4WrUWYMVMeVzW/bBEWGD45zP80AgNqJegzV9AAvJ3HsRZ3i3x4kXJPo/mZ
	 OJxIWXrqIc39w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51062C4332F
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479905332.12542.8157531535566491156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f44d724320cadff8f0ab00b75cd4b6f527015344dc1644db64e0bedce6ddfb
Date: Mon, 03 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664799053
