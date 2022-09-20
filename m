Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A821C03
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA16C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663676453;
	bh=pMgdnBe2D60p404ul1W5toFJ+WQQOaqYnfu4yq3Ahfs=;
	h=To:Subject:From:Date:From;
	b=g0zfph6KAmnV5b+g+bsaBZVoLSflxdZQdEhCG51Nl2UAmvEkUftDMjrOojSy5TV9w
	 VH1MgA5zK8O2nNIP3xlazNEOD+9WlvE6KUSQLMvmPPWZK9qct5WhPZCW0YlICJyFI8
	 zUqdX54+GAhrzSYpQ27K8RE1YeQjjWMdUmbGJdtCKn89w5woUtC96P7OvNmSQRneG/
	 UjIvw/J+NJng3RlskTeOCUcqxQ57HkvIn0ppDpAzJuBKVU/rnBaHRH5IWC62XkJhVe
	 GNelsE/zvy19Wdw2RUtxihzl7+KAJ7mn5LhhevrlsJk+kuIWL4IDi8aT0TNIw1NT7d
	 oD80OdTztdYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E37DC6FA8B
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367645334.9891.16208584837245285675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ce9131b6014d0ee03472f3c89c6834b71b1b64635f38ddab8475f783a53a1e
Date: Tue, 20 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663676453
