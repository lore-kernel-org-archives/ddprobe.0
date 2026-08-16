Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEA13C13F1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786875034; cv=none; b=jZ3cqAGd4+An3RYt/5R7RS0SPGy1jLqXFwVh4+Ccs/5/WV+TQlW/49wuifGfPQ4QGg5CshIvx1vb/gfgu5yjCj1HWClGOJgMlypdaYiNsL9Mwq5KkBiVweBRB9BloIH6dnDtxDcr3ZFv/AuFYKyGHXD6NXseuL1i/qWXpFIvS/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786875034; c=relaxed/simple;
	bh=EziDx9AFhbsA4MWCG6mCJldbFPHWsRG0LCjf6jqJR5U=;
	h=To:Subject:From:Message-Id:Date; b=D+YadML1/LLMSM5pkcnRnR+mkxuR1JGBrXdZ/mxY2WE9oGmO1yNmJ09WlLLTbAofhhvYbB0kGG1zsDq+5IFzncIuJUAx2Ok5fFRWyyO1LmqOiKQf9eQYE7+Sc5IG4ijobgghf8t1RIgXPRgCeXH2zHAowcHVdOwVLxKLZxNz87U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFUFnlu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFUFnlu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB564C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786875033;
	bh=EziDx9AFhbsA4MWCG6mCJldbFPHWsRG0LCjf6jqJR5U=;
	h=To:Subject:From:Date:From;
	b=iFUFnlu4b/Ay8j5eTcuTpyom+5tHsar5xJGUYPycMszSn5ma3thBocTsD4sYOO5GN
	 u977HYGSAgVDdm2C4I08Eos+1AT697Dq6d0vidSBKYFsdppwZis/eMriW9t7TFYGNo
	 VfQ6g3CHeR8+bFZK5UbkEvZDdhgIBvAxrstUj5OgfH1CmAia51NmKM52K3e6zbwRja
	 viQ/BRGUMhI26783xdY8f3r9/tRLjM+iMRFAbnR8uDJXto0HJzyRQlrlwg1GBfC0wF
	 JWxf4QhnadNQ94RhpobCaKpF2AxHfjAX9zNk51fOOSybAlESEQfENQ55flvXEmUGxg
	 iFPQs7sebQVWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2160C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687503369.18267.3278906657286400073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e19e2272e7c23f0c3a98a6df0fa5292db6f75edd7a7122d593bb3ea9106c7dd
Date: Sun, 16 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786875033
