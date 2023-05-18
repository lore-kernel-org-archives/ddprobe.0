Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CDC394
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 04:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE3AEC433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 04:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684382765;
	bh=ZoqtugYmk7BCfvio0TTdO5xEvuNUC6eNnGHQh1OCZb0=;
	h=To:Subject:From:Date:From;
	b=bkVQfczKUgYa+Y4h2dzLgn35uhio2d71B76rWrRjuc7Z1dF15gpKZLEeUPo+rzl8U
	 Br/BEdXUYQ0DBWlh3JKBJC37XU9EotHSNNhoXjAJXD5Fb5h1u8r37F9+wDkOXlTzP7
	 KbYgbWoMxMNoLObOccMaXhnLkhBk5YAKsBWVTzzolHe60eyEQuRQXdSWow3C1CQO7y
	 UjeDufRmdcKc5E7xDadiaugOAkk70XQo9ssq8x+DqK/KrYF8AZ0xz3lcHk4xLlPQZa
	 FhqxVh0VuyPoTZxhE1QPKGyAdM82o3Nzzqt+FJTEF8Z1Sgx6vqzZHgZPT3729uqHk2
	 m85TvFSoPBuoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3073C77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 04:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168438276572.7473.13521808602213476329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe59600236cdbe99a00a3e6a512bc7e4558ab839349423954eb1a2fdd492aa6
Date: Thu, 18 May 2023 04:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684382765
