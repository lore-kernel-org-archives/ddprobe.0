Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1A223AC
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9265EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666707053;
	bh=/D0BDcCQP9LtXOTsldyKjzsU3goXXSfgcXLeB1pLoCE=;
	h=To:Subject:From:Date:From;
	b=V0PswGgqY9mDvRv/7RngNEcoiydVEUS6d54vfbIKpOovvrzrziU5M3aboaZ8L84rj
	 t2oocZGHioDIQf42bqn2+8OPQdFOyE1VCklS2/JiApfrEU54WRlfeGa4OBDaxcJIna
	 sdxdEwjUVnGtDuvVrveoP1fy2rBq9mAngOPE00L80nWOvT3YBleXIiDXaW6MPI1BEp
	 bpMkIC20XxPlSo1Y2I9Y7JHaSB41LQvQ+EJlarTg6rjVmz49EyA4Fs3Dxclov4tBx/
	 JA7yGNnLMDRYxqT4QI/a7hh0IqMAnb8f3lbOUKGI5g5lSeJk2VEocuVJsuxojtavhv
	 mM8WufSFbHeiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D159ECDFA1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166670705344.30244.13522271542959576667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83fa2746cd5d160b690bbc235ea154c4bcc2f9da15a02b03fa880e7fdf92ab2a
Date: Tue, 25 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666707053
