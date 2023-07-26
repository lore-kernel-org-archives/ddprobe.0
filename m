Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87AA2BE5C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 23:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E49C433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 23:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690414928;
	bh=0Z9lk5GoBwqVaxP91U5BuXaojWiFtL4bgfNmg/Iko6o=;
	h=To:Subject:From:Date:From;
	b=Z1+As6NiWPi/XZkLBxJgRQXPPn7/zXblu83pH6WfLJXDe5am63uhXuXTy2tZMGrcF
	 KstK7NhpyQj1N7s2P+2ec80wgl0EYO/XxQ66ImE2CltobQoIgDakL2JdWnsF7tRdP2
	 xOKjaWPPCkOuf8cmI482lgGzUzGcGhL3dPgKkbZgmR7MID3jlXi5YBtDuUM0AJCHK0
	 i++uEdx4Wgiowzi4qsV0IBgfM5A4oT3K+FCsvtQ/JDVKzYLJ5oHNgTXEy3ztXuEaHX
	 PLoY2vXIWQl1ymOScCE7DGzyIX0cIf76VPDGxyupot+7IvYOhFtegM174eBFYvvFud
	 OULm/kGmDVixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC6BAC001DE
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 23:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169041492874.13461.15304038250973824653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d47b4200a906722f140d28da2085cdf6f0096850ae5260a3f853e1a3537e05e
Date: Wed, 26 Jul 2023 23:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690414928
