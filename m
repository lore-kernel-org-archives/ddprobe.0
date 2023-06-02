Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A01710796
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 14:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6627C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 14:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685717225;
	bh=aLHnYiW9YCx1XtYc5eJGkAQPvXFWSTMcJZfc1e318Og=;
	h=To:Subject:From:Date:From;
	b=l4vjgPLt1192RF19Jq02RUcL/QekDWMGZhkFMNmPUFDSpkWsCY5Ngg6+1PQ9s4P/x
	 H3c40BPYfs0bivqKoKyE2Psf2kAiZEPpI0nP7d7/EVVe9KDsNpwidcxml4hujK3HT4
	 YXykdiPFjEsVvg9s7ar/tItiAmZh5UjW/1fxbSKqV0s/LTOgEOn2GB9nPhGxFw6WWT
	 wA7hBamHzxzfBrMxqAPGcQzmoxyUr1Mxe3WYxEoCQ+98hu+dmLrIH5WNH+GK3C2jVd
	 Lm8kBGSSPQnyXGdqvjqdSMP+jG9U+x44NbWsC5A8+5Su1yN5d3gMgbWHOc9wXSCJDJ
	 lyxTpoom8fkZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD98C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 14:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168571722576.15833.14665637612540246176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb7f96878beaa3125aa18b2c7df5edf59b75640ccdf9c59acce3e01f4f8c640
Date: Fri, 02 Jun 2023 14:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685717225
