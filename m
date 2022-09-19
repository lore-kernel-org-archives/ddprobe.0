Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7EB6127
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A8C5C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663601453;
	bh=LKh3DdF9XSwx6phfFojIznecZGsMIkpnrmfKvMwwZ7M=;
	h=To:Subject:From:Date:From;
	b=ePDunsw4uDqHS03/WXqcNVq9Qpj1MzgjfsTSCPnrhE20C7iM3corjgCGuVu+hGdGQ
	 p9Vb3SLunNoUXCSC86yXTLOXKsk6yUvegTopTYwgawBLxzSneQn+y3JbyB1LQb05OI
	 TgEq6/5OIm2GuI4EGXd0ZCC19jfUumJb7U++tqsb4YA+vYxmanf+kB3kQMq9bKEx0o
	 UaaHV2QE8Tsplbh9g3Yv/WtWp/+iuPMotv8SmiVvEJSwCL/X0B1sJdLs+XrBfmqOwp
	 qKfxMr3WlH6HyePJYBUBg9HgnKR0deT3sVa0abGBzB8QpxvcONkLwBS18QLu14mXd7
	 JMxUqjaW/NrvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53269ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360145333.26763.9492370889335020242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14695125066bdd95a9c79e4cb519e6f99417e02c78ca15cb5a24b4fb67ca106
Date: Mon, 19 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663601453
