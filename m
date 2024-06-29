Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EDE438DFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719701663; cv=none; b=Uzque02mMGTs2AqW6VVdTqWxzjHqkq5s7NoouYTPgjTUkwNYWWRoBxY4+/C+YXJC4/9tgMfs4sLJpQr0TYN+ZnpzmAXnhuh8S4I2Z6DVFzPyTt/lHIiK8P0RAKcUpq7t79IMvhLY52HSHk9dL6G8hyAtjyg4nuAzy6tc8796LqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719701663; c=relaxed/simple;
	bh=ObowE+88UgyBfWZriwIAaTmRFuOQXa8vCkzJhVDUndc=;
	h=To:Subject:From:Message-Id:Date; b=ASf1rNWgJn+sn/wj/vfXRqPzqet61uu23jYexnq3mp8mOCh0oXP3l2Lsbhp3RTd1JAeWcLrLBi4c0E9VAG5h3YFQ/4oJbTi3DkQ7m9+pWndoTPVt9cWYlvxG0kZwYud50VqqjpaEOia9pIEwVLnWtojX05hhU5kpHdwONw3EnfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfKF8PA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfKF8PA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0CFDC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719701662;
	bh=ObowE+88UgyBfWZriwIAaTmRFuOQXa8vCkzJhVDUndc=;
	h=To:Subject:From:Date:From;
	b=GfKF8PA+KsxMrRoFg/YvLlEhqTbi5mpiqjorSlSrb/ABXv0PGm8QUoEtZwoEWRATN
	 GpPMRjFuUTQg11ttn8oW1wGhwJ/1+6S+bvffBskaVT5BbrZnvd7m6dr95cZge8V6YC
	 Dau2LDDMAvLrxTobq4J+qzHLKFfeWR+y6H2HlCqfhVtqEWDHR46F9/KMBkR8Wlh3JF
	 CoiwlqWAu6gYjVkFxyPd9Qk2pK2y++31JHG0t2UG+4Wt6sMtE5fpl5fBhVxu1YcSgm
	 lKRgEPR4w4VELj8iFabIJYenEqvwA3hw58qd+mYfVrE9x62AqoI49iyznQHB0v4GFW
	 3XYmafstPp2Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF69C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970166276.18629.12872311366860018684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f760d786f4a4e011305c5cf15e5bfb799b9653756ffde03f1946dce5a7bdc1
Date: Sat, 29 Jun 2024 22:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719701662
