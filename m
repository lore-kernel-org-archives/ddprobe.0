Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34B62564
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 861B6C433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674030087;
	bh=xR0YxWqR79s7eFF7jfiNvUC/N8nmylMwCPoQ7vIT5Gg=;
	h=To:Subject:From:Date:From;
	b=RqhnFznqAyAqVRKx9tR9J2RCOnnxwHfQtdmdxfUawdL2+Gp4WsPAvXFS92+2SA3Ll
	 gz0+7its9LT3QcdBJbth7sQtO4ji/KACYb2rbBI7T6URQgrljPx9ufhsLJ3lw+0RUt
	 G++eTKh9ZneBfQzWu/H64XPb7lD3UxVECFoSmxy+Xi9OaB3VmhdnuFDws5xSs8y6eF
	 HExKKTf9MdRk2JMXUFuGArqrYFAPMyrjfmCAftrHh6Qjfu+RUeVlXoSVUDz67yL6WM
	 HU4Urz8VtQzFbZD0Oe2vFUTJv4jrDP4hVtrhq2Owm04+TP5V1CD2hI7AZiJeDCzC5l
	 xlPxCniKFME0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B11C004D4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167403008739.8347.4810357087094698983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf6bedccf2ea2e53e17ea342fa22dd0cfe2300e32197c24e0de61d4bd026337
Date: Wed, 18 Jan 2023 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674030087
