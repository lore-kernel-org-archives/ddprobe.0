Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB40626
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 848E6C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670392854;
	bh=IdhX40rlDf+NRdFEYY1fFXtKLSoYg2aGgTbilyoBPr4=;
	h=To:Subject:From:Date:From;
	b=MXlU76vwmxhqraiMTOi+dhiBq6FP+Gdfsyy9wsRHbHNr3r84kHocaFl2Dz/rEWpN9
	 dqspgU0FSkB2uRyzfQjLjMTzHIlBIm3GwFKol1xL7X5RFy3dOgeDu08IZ4hdeBjkwj
	 alEYdV6y7m9GyQLbjvoejzr3zQgFOnerUoSA4PsV0aCZVoNdIg909K4CCBYASY+yPD
	 9PBVQzNhbZdVU8GQib4o+pZc+p3199rlghOHuPFyIijP1NU4AM6LfUTYzJGwF+Cce4
	 YUxqRrz2PKm0j/jppCMc2VDs2s2lOf0SXq3hEAWk5zFPBU9dqUUSvcGxkqHlCEaxl3
	 uTY4JTI/C9+Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C90C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039285439.15681.16682737826745637281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cba4f07dbb7b3c2aafcd41682b9ac595a31de37202499cd633459e09ced9201
Date: Wed, 07 Dec 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670392854
