Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7364A23B8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 22:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD547C433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690581728;
	bh=Sj2HBgUW+cDqvAZ+YDfYMzTZGLi5k3n1SnH4uXaS9ys=;
	h=To:Subject:From:Date:From;
	b=BkobbZSa9fDlnWND2IgoQ5OEdZzXXM+hyLVy1IAiK8tbOech7iC+IExE0SFMff5qn
	 V5YnGfjV8eKB8PEK7XrkH84k1Evdv1xpB8xUEn58QV4Rs3/uFXmIJWUGF8v4SP4eP2
	 b/pdwhB3u5XsEzIF1OVYbxmi+NTFoEmE1r9RJx1Luu59OL3s/AkYjHWn2jJ2Fg/tiM
	 nTtBvuU0n8qRNlY4jpZZtCG8EsrC19ftjENqfc4c2EIpOk1WgyZsCWYfxf7g4fIq88
	 0f72tGw6SIY8C2dJzhsqTmk8jLk6+gjWkyyt10L/Xnj3//QLCCfhkh8bTs3GXfczBD
	 P4Pj2k4A7Lczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA98EEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 22:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169058172869.18826.1031846553909696557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b577d7dec7a521150d90d0858eccf118434f45758bc9f0148b076c12d5a7e17a
Date: Fri, 28 Jul 2023 22:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690581728
