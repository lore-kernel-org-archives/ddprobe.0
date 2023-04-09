Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687AE19A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12BF6C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681015866;
	bh=34PczVbT2Gs18lIX2SE82h9udzlznR2UUgB7ARgQ+L0=;
	h=To:Subject:From:Date:From;
	b=NWcvn0zKss+csRvSiVAuK9XBYjB6qv/yxYv43yA/rEvQFdyUyuV2fL2Mr9GfxroEl
	 BwkwvHsYiJGzDc9m3SMIWuGH1y+SymV1zeU7d++2cb/bKlTA//BKuN0pDqXVM7de6p
	 qWd/Vc+y988X4Ix67aCxJdGO8KKFBTlef7fYxy4PDBsj3klQ+qIxMvGFNV82tBcrmw
	 0rKCVEoiDEuogxqsw4hDpCnEvOt9RovMWVQiEZMZ0ha6feweJgJfxUytzHgq5V4z8P
	 5NXkvNp6rUgVI8AbAp+YekLRFtdvtUx8//buajQUUTaYLz1d2HT+alz9wTZr5grFxb
	 QPQJkhAiv5Mkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7FCFC77B61
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 04:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168101586591.28817.9401853370933116425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bf4035581a43873defc6c0d05725243371cb73a00e04ab49667521d5aa1981
Date: Sun, 09 Apr 2023 04:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681015865
