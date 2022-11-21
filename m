Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C387D442A
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74EBFC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668988854;
	bh=Qpb0Exs8mSaKC3u09fGrOlDoRvbLInTd/8/z5A7PFfY=;
	h=To:Subject:From:Date:From;
	b=Pc/93twuUaABZ5HR9DGBYjdEqyTJ1ypDntpbglr21IAVEDfGFh5BETAquK0WvVSsy
	 2hmBc7TK3hzPlriqKvvAlxXCeceVWs4lKAjJ7iDzp2l7PB8wOaSteXiL3Es7xnT2aB
	 sg3ckLxu6zGVFx29IbZRkDzn4ZmDMrVFEfvGEx40r6QpH/k9SJMlLJ07fVNQe4P1Lq
	 6Y5MeAvQgZHNwZ7NM4PzBJGWQqZVBexO5jbzLslbeFlObUrChdH2R6M/t2FD1Sltqu
	 3r7zpLwYU4bgmoR45WLTJWsz+CXC87dJwWyCvwfILT/ustMH6rVNY6qWQMaLGoMd7K
	 GX3F890WIpCBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC66C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898885436.16771.14805706193325189296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99bb72aba6a81f956586fbbc780da94add606d66a53250729e5a7fd86bc56364
Date: Mon, 21 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668988854
