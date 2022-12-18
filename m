Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE04A7E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8282BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671355887;
	bh=u7B4XvqgowJ1moXMhx3Mx03LgMH9zoUqId4NxoTIHmE=;
	h=To:Subject:From:Date:From;
	b=EURwdD4J+lO81qPD4Xj4pAGHmfqIKsSDDvzenMYYLQHvodnsQmUnyNbT2ckxqkPLO
	 1IOSEw4bDOv7MzqLNHcfE6FiCjPACB3GBaPWaLzL/kqzEYocr7s3QZGAuUYR3cCjRv
	 eLfY96dtrQYmdljcwzTXHs+ins8mjf3TRwgaFP21ME62+l/gf0lLdRsIJ6oYxt8tVU
	 YZRYEGVHvgUxN9QfwoEL27SnYUZm0oEqpoBbUjq0vBnuLvMyqaCaFedRzQCcD1xD8Q
	 lvMD7fuizbPr5T/uSmKEP4fcSCBhWIObakl35sI8jeT0ZObSGukKItjQgMGOROrjkK
	 0SkNqcPJDbwFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65B9FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167135588740.19443.2864639938363746349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7424dc793e74f5d27d728840118307436881f260386cbee2d6ec1fbdfd97bec
Date: Sun, 18 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671355887
