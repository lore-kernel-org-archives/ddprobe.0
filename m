Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E694E15A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEFCC433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671679887;
	bh=Igcl19TeLpboo4d+r9jaPndJKh/J8AHxhZM2O73mYuE=;
	h=To:Subject:From:Date:From;
	b=lEjSfP2gOjfp09kFsHe5eRI8ZtIVCMDVknyL7Yx1xR5dftyvFV/2eZl4E1ZkuO2od
	 qxkTx1bVPe7fJH2GxZWn3PDPr+4rFRqtAx/PwcWUVIV5f5iPnGRmYGL/+FXsTKjy35
	 qgVsBIxrdyaImiFUuK3bL7l6IF6C++M+3ENtyhR5ncmvenUtDfQmKpbLpW6yxkhWSh
	 c9FG5RpEN+EpYENXMfLzyb3U9MCoTpTi0c2F5L7MlgLwgSgNImDwQN4Swafn6sqMrj
	 JvMxrWPUuBOHOQAr7zaMiD2UPaXgrh91TvgZROxcDfqUCReAhraOmmVyxJAy4qxJ4Q
	 dH21QE8Ozk1Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C8BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167167988737.7852.15414895595551066026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b34fbc09f6879b39611a4bcacfb92d283cec842bb6cbeccf1aaafec5cf3f9ef
Date: Thu, 22 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671679887
