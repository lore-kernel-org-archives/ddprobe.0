Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9A3441C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 11:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E359CC433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 11:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685876945;
	bh=VV3hTpJrk5bEUCQ/420BzXi4mrgzrVohYXhg0MJB+C8=;
	h=To:Subject:From:Date:From;
	b=Wnox2eqKmX3Z+fHklgEbHCrgFUsV2cKi45BLEcjDDsdZwfVHYWg2ZdWHXrZRpB+Wr
	 Qe40LEEhSCTeejNoFCHSLJxIF4DmlGOiNOoJhIFhKdXD1ob/6C1QvJNOXAEtH/IeTH
	 GPguZ3kfJJZUE8E3Rj2/Tc/PLCNU4LKmQmprlWrYV0YiQ77iJidwglrTLCJsZi224C
	 HcQ0Wf/vJhfHukyHZeoKup0im3Mdj7bOq6XnsQCFy8+WUmBPYYn2umTrcfZaGodVfq
	 nO3w1xVw1VwGHMpk1sRym/Lq/1UK5Zg9LPmVVzw7pefeOC6p9al2dnmQsg9jQtzP56
	 dE1qIAFwiVajw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62EEC77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 11:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168587694580.15917.4290488273508734867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52b90bd57aea6f4e51b90dc7a43baf279c209ab2bf711de2d73d03ef5cd2dec
Date: Sun, 04 Jun 2023 11:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685876945
