Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5B1F9E4
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 16:46:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA499C433C9
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 16:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688402768;
	bh=9ZEiQR40J2JJyNuLX7b/vH1/n6sko4H7Qu0itrktQiA=;
	h=To:Subject:From:Date:From;
	b=Sm6+HCDvplfoJsPN0OKl1XQEk9uDcCMiYGhqeUciJBUBxJM4sYDbgT437GIjAumu9
	 bGgKLNSttalu87ekCEpCWW6/u3GiU8eN5h8iADafydjkSh5lQqhnvNv94dRAQqgJkb
	 eUCVWdM9VZxd8LjeWq+H1TUowv4ZPaJlVEK4BQujqsra07lE+gHRC/HQ4cvbBe5LkQ
	 AKNOixkKXME+mM7Y2NEMA8FkhDKqtQkTasmRFJpTGE/LdS7uia4YOuvsOlMt/FUnXJ
	 Ml8NEQB4gvFx1rDw589NhnULJqMQPdf4HORJ30gxO9zfaWdvPOltc9jDq4MAG3AfBX
	 IkWG5qY6gj9aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63D7C27C6F
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 16:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168840276867.29318.13296755427053744240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fabec40bf3a27f874a24256934d34c4e0ddfa1c91b20a5ada0aab718513b7e
Date: Mon, 03 Jul 2023 16:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688402768
