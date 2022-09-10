Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1377FE
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7461DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662784253;
	bh=2hwavxoS7fkktU9qqfYRz8tudZz+7kLomJVD/VAa0i4=;
	h=To:Subject:From:Date:From;
	b=VbNhrDTx6vNg014ziPqU+28NDDYQv5jMsnzKT9GVZEYOfpO9/wDk/na9/oXWuw5/8
	 nvN0ztgbkWSRTuWazXpwAVGpfybeu+6lHd7n/8rgthTK9c67qHdVfEZV5Pwt+0I5Jm
	 H9h1bmaZCkjALiIICsQlQkgjG0dbCsrQUBbjNgK5zS9qfOkPGUczvlEHCo9QnSpzP2
	 tdnXfc2Qfbti/wXWxAFSZFYvYAVR+jRgIe7HHJETJGpllhfFTVTt4mx1cLXMVCX30w
	 Jp8nmq8b9lCsYmeX2G7RUBhSR71EFoPzsdZVA84iBT3vYyS5ciFRYiuezW63tlrSCk
	 C3KK+eZbw+6RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59428ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166278425332.28098.8767819183638508138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d249db0954cc04d64c1e3148a4e68b364fca33cc38fbb5397bd13549f2140f3d
Date: Sat, 10 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662784253
