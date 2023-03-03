Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494878F53
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 18:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC06AC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 18:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677866826;
	bh=dq44PcI0hhPLEgM2YvsNCuO1BNec1odkA1WFLs2xHOs=;
	h=To:Subject:From:Date:From;
	b=BzKcWK0HdKt1oZiV4sydT0UsMTtKBjZmvFvG6EEQW5MnOYXiJOomJD8YEG5fMJEMd
	 gwmrJwH32Q03eveP6LrdtWX4ZaLwfcrlpO1baDbkDhFz/JH/J6UrUYOUhbce+F9lVJ
	 4aEnoZreP2gzJEfEx5dHaiQQxy+EZJEKUTTsQSrHXleFC5Jk6loHgROmPJZUvBMHFG
	 Xnmi/7ERFrazqgi0UgF2jwBWP9yt/986/BrihkHXSoljCggTs1TCB/4oQAdEP+M1kW
	 VWdY96HdLC94sRQ8b3zWor6JCN+i8+rlDcyx4Al/BOnz+A8MrL9G9Xvxoi20rgDQbI
	 n3F9bjqr3Tm2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC65CC7EE2D
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 18:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167786682582.2674.11169824556125141732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a5901c97eb7b0918a0e5831a36bf0e4a40e184720bb48ac8a4bb7af9fb48a2
Date: Fri, 03 Mar 2023 18:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677866825
