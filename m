Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19165395
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F14C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664466653;
	bh=I1q5cYVJipzL/gfnFwoNNKeOZTtxWyWXXuyaPgAblRc=;
	h=To:Subject:From:Date:From;
	b=t/Bn/muUC9A2FQ7ZCrQ+Ag7Z8rtjs7el+wclCrvDTl6rpE51Hk8ImyUlP+pQ5LHy0
	 vWO58j6gAc9tGuw+9uuiMlXVasxWwmAioxOKTEqoU+efj1gU33zHz7v8vyG8ihvtLU
	 eHX8ZysdwXLrKlh5l+6W6F8zRCyVQWYv93Adfdan0JrqJfKcXR62ZqCYo9DmKqtCy1
	 fiyw8ar7GW3cyedO3FGhMnDvntl1VwiJh32M09bz1YuAnMck5QE0W4/Jt2qxnQpvBE
	 8G3V2uEA7kRWTwH3lV6VYL7DcRMu91twzGt2S+yMfsIsEovJeAwUex44Ipe3PRTzUx
	 hO7xEMq1w423Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CF7C433F5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166446665335.31187.12463224195432037076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fcb3cf1b084a2ff52b3d880c7e1e00e91799ae1ace8ad06edb27abf7d7b07d
Date: Thu, 29 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664466653
