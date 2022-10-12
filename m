Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9EA217ED
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73041C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665587453;
	bh=srDEwCmX3PAYnSuIlUyU3hfFQu+47NzlAfZ+d01OodE=;
	h=To:Subject:From:Date:From;
	b=DZogLjVZrC9QPsUu9CFcn3/O7MhpXAEUFoJJnAy/VXe8d5sQzdXT63pS1UVJsd7Vi
	 NSxlnZg2+VsO+C/5trS0YpQouoDF69Y7t7hiJZifsMfWmQu8quwiGoXYQ13sm7/lXg
	 tv3VowKzueiEujMDp8jgDIchaUVUWfoIXsxBaC+Z8X1rpR63L77SajfnSSzu5V+jfX
	 8tycbliyvAseYW0DhC1RcFRbvroFG5XsacDkTa1X2s0uw+quIKeoqbMXnBn5P8wYcf
	 FYXHav1aTgdV1KGv9IZeY5IgNNjTmexdmPXQNxh0HepOs1MqJ0guBqJZBOhi3skYsS
	 r+iFHX58oreyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5579EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166558745333.26047.5457365345051968510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342471d2130233a9ef474435d933d41bbacf721f5d478488ea4fcbb225260dd1
Date: Wed, 12 Oct 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665587453
