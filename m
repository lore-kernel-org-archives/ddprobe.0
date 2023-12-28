Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01144101C2
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/gHHn/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86955C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703790496;
	bh=85p4UqUUuSyv8aX9haTv09Id51m1o8IOHiae88G9QzQ=;
	h=To:Subject:From:Date:From;
	b=I/gHHn/GKrYk4NCWt9c+aavQCEYFKmOZgFZ0z3EVdphRw8Pzr2qOQWo+qtccvrH7y
	 oqz6ys30isobJ0xn84IpspyxciBDuh+L6dCG+sr9zcTkkuXEkkLuB4t7Eco6u3mZUX
	 Vk4hTFnzxErrhyMuAcqWLPH6w00Z8yvga8zOttVrCLIECeyRJUPRsRkydB6b5bpltv
	 bzqGjCrT6RIF7xS16Ow1mxnZdKHZly30qyQhyPT2+JOzVghQRUd4xa7jUBp0OwcHSh
	 kcDjVl1ARb18YOSLv3ssXNUwpiD4xOpJfEDfrkex9EWf8Ujs0QS1e2Cw2lxhA9p5E4
	 BGswWPEB4rgug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BEFEC3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170379049642.2741.9174835812825779962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9256a8ce0cc7cfb6cbab95349a150df5543e474018f9afc21657c73b5a0d74f3
Date: Thu, 28 Dec 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703790496
