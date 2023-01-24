Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438216FA1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E89D1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674573185;
	bh=mrIdhKshLSzCgiwGP+2nAv8hnhZ+leHY2JZmaxmH/WE=;
	h=To:Subject:From:Date:From;
	b=ZO1AqHBQ+RES+c+i55X5dQMchMCKh/Tvd9tr0VDO/aKMypfQhczs1v/z0qM84djSw
	 JHSEjIh0IAYnp+WothdUCtC7AKwu7rGqj5w/SngCaPfaoWUa/WIRWMncEQqj8sLtML
	 +SIUwTahjNEXA+B0Z2lA/6SaffcT46mVHBWC7OCK6/k0oAKoY6ThA8L48XAZAEVRD/
	 WvKieVhOUgRJ6L4SSreQD6nvtcgpuWqIt7HjYYHVJIP2qxrfXBGaT1Waj2wPpxIfo5
	 X57y0WD221BFzuhxbmFK+zYGZAjNcLh1pZhEL8FN5bd04WqL4AqU7kIIBcTVhruwwF
	 RhiWxtfRAZdjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA3CC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167457318582.4433.9851823732947103322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7900c397a547afad3d7d0da78201a394169022a9e0de66d238432a38ecab3c28
Date: Tue, 24 Jan 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674573185
