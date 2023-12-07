Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1443932C67
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+rTM+N1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5B8C433C9
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701940096;
	bh=FhuwoLlIr3WxY1C33K937I4at5A6+utwmaOCiKutQmQ=;
	h=To:Subject:From:Date:From;
	b=d+rTM+N1nInN1wZmWAZOmu+QVSyyycvzZgW8m2dM+uK7ePkIuWkHZM1WZ2YH5FSJO
	 wN0bL3HBCmf8aAncxClkydhX1ZZumisk8VFR2DylJ0QGqr3KRrZzTZI+6VQXuSaw+D
	 jcMR2FsVHrzhETLi5zvbH636c6wOecK9GjtTAYr5MCQyggAt1/zoR8/19zhrfHFy2x
	 07x3lWA+BeTVUnleOrVF4VcPaM3AJxwt3oYiIGyxE8kBccfA1amHZLAAczPHqAsUOe
	 QaYgHAekedyMa1MnLos9s5dnQgKxfAtbG/mAfNCOBfdhUSZhvCY0CMy4Ap5UGhcIVX
	 Sc95qqPT1A20w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F34CC4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170194009638.2643.17352504876570847924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873bca32f22375ed3fe965ae545d823d1111369d9d90575c92bc86e869a607cc
Date: Thu, 07 Dec 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701940096
