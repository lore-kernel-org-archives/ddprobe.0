Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A91C2CE
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 04:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D242BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 04:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680150545;
	bh=z8zYYFU3G/mKMJtXMxWqwBCb+bWv5aIWeNj1h9V04mY=;
	h=To:Subject:From:Date:From;
	b=iztQKJ7Z6QDCIlePJX0gmlywkMR8AM1varcp27uYNiiTw8hT75oc28sSj+5TXl1Sz
	 mG6dAmNLwPGT9pN6ZEy8LpAyGYX29p0WIq0FdlLkXDILCX3gLKKjBP7NXvuF3qh8Rc
	 0+ieTtGd6drTmXU00FOqpYPAkK0jMX3HdbglbJSYVCNs2+AvwBQBsKgGCoOdBZqatP
	 JogV1OzQEt8meIb43+Tfuuc52fzltYOxmvgn0vgWp7UZqFsq1KIVZFv59cdwW+gWwa
	 m2AODWhiKivfvtd8eW1ErnrcBKYrMvhv6VHXU13Vp1F5wpFeACfNG8gxfRH6B9Uia1
	 VvkfmdgQXeG5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4247C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 04:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168015054572.23636.14195776438216755233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673a142347a89589f62a2f4c17b8bc65cd00f143ca9b258a573e1037eb53a94c
Date: Thu, 30 Mar 2023 04:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680150545
