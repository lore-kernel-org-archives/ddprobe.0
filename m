Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28F42F26
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQIKLcpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1CDC433C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699193896;
	bh=tgMPdtppCmspUnM/kmrhJidE9sb7mxQZFv0Pl+dyLYA=;
	h=To:Subject:From:Date:From;
	b=eQIKLcpTp6FNkYX+8fL2xm+stzzsAAGvXmR4QCAX6yRVWwyzrPtcTqZuS4ZvfSLMg
	 ybJTpe+amC7mfuwVhE/ELD8Yd4LfWEnzf1lEPtmSD242xjIl0WqxL7EknQ0MVo+HWa
	 pjMp1V12yNMk3S3k3nPNEV/MIpJ9FcxUQaIKJERfqlP0A6ZtudXX121Gg3C+rP6D03
	 92kPfkbkkL307WDDiiX7h4l823w8c2nELVI81wtMyQZZ6JxU9iWs0ciaQmjmHbYI7i
	 3U0sciuGzm8Vaq41KqCV0jTyGF2XWfM9aSMqPF0Qe0eDXPBqeqwSXQCF6QWMgwOoyg
	 kTwYDkgqdlG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF03C4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169919389636.7650.6546071204221891902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db61cc3fd93db624f4000c5fa07fc895f7864c7a3fd43832574e33eeff1e871e
Date: Sun, 05 Nov 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699193896
