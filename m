Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21083366
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED77C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673499087;
	bh=Lct8n8S8UvB4Be6+e6N/4BJq+C70VyHkbq9ttynEQlc=;
	h=To:Subject:From:Date:From;
	b=rKrrAq4bWmbnl3EtCcOrajflEeKhpfQQRHO+fhiREJcxfpb1Phr5ecQNb88uKdNvt
	 sheluEzWk6yFA/a8uQm0rEK6hsCcmkIvxby1nW9xuSyreq1zSj5wn1/CwFhZk3hdUe
	 Ky+1VRjXpU/gUDIDiFo8b2RC2xbcbOT/u9DUm5Drnr4rN+ve9dulFejo5f2elO93Fr
	 /L65tkIMTl58wAKQ4YzuJOc7hfOa5xKqzFMXOhWV0DfoJZa92bpsyRFGAFyl+2nzAo
	 JHi3Cr6yyytD+C2r8yesuqCASon+ZcnkXBOIOkV2SeUuf8P0XZsYby83kiXhpmV4/Q
	 5LySz7w4TnDDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6902BC54EBC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349908742.24966.761724578177690537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cbfe507c3c072970debddeb90eea163c61709e2d419c776ed2fd92828731d1a
Date: Thu, 12 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673499087
