Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067D71D527
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSZGAHo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFC9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703357296;
	bh=gSozHZDwNKQNNnzH2fjVhbhWGW9FPUjmZVmbExAFQ0k=;
	h=To:Subject:From:Date:From;
	b=VSZGAHo9CgTX8xqDDcV5IwxN26n1CEWZqPe6pG1QqxbEid103duCrdo+kEW6E+ZqK
	 LSY6H03kMwyG1qOYgNElkthOGdRP1vMX2YRFVN99nyQLOtNnhPcwCx2EYBJmmpYP86
	 LeVtx0mtUEVoe+vZE1uPqbYYBku1QrP+nwo1/v9fPJpUxjc0SfcOWM4uinyuT90z6L
	 ZXOHtGr6RXZ7oEUxbdqjbGj6SG338R8fTAP40DafSG1O083xs5X9eCIKd4jGnWqCmz
	 QQsI/xKymqykWGEXlCG2MEQja4/7N3z6sMjS8RK3UCW448GIYc4o4rmaHigDe6jLMK
	 66SGLRwNjA5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605D0C3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170335729638.12319.6088417820992896681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb09917f2100ad42f43fdb684a2a3cda32af39ba7d5a648a3b8034a007cc1eae
Date: Sat, 23 Dec 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703357296
