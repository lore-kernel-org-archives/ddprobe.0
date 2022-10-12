Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D601B28EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A4CCC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665595853;
	bh=H4c2q9nGemmmQAr2fTTjVcLtaMndyfUzmSmvECIoKSU=;
	h=To:Subject:From:Date:From;
	b=QUplQ8EUbrZhMATkmkwNIQS2UfKtb4YpgRzAra2i2SSKOOYtUFf0+HgqDgc2gkBuK
	 RIDII0MDeLV29LHdIDs9zChpzhAB7OBTW0TklEFhRlKC0JGhvLf3yyPff567Zr4hAY
	 52uP5De0ODD6Au/7X/DJJ4PN/YBtVbqbFJRXfLWDTHJVucCdw7HAlZv7mjwpz43dGL
	 2Hz0a9mM8nqX1iAELGW7KjWTBFHpklXmLs7DFGUnysFcioMcfcyzcPhF2v0Y6RMnD8
	 Lw9eZKY95L5fsSyAhfxif7XhAhm8zIgIeTrSLKFq/eBzq6HTrpni1m5veCnV1NiObR
	 XVB2K69ECE33Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B36BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559585336.22469.4250509479319197364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed551872b645273bf762affdbe609a5e7f20939bd9cefba13f70c198c53a027e
Date: Wed, 12 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665595853
