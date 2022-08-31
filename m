Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE3A33EC
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2FAC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661978453;
	bh=Dg7yfCGJCx3xcbSrOmJC3qAANNvIhbM5BeExcaLhflQ=;
	h=To:Subject:From:Date:From;
	b=fkHQd2jF5pTcCaY+x/A0Xbquoc7uPjN+L1A7h0ScQaLU+a6OuxbH4b53HlMtwc454
	 8PM+zeLjGDDy4FsQeZ1FQq0ghAcEHVCe3PaI+CjnNApARO3EAY4llqmMAgrQGvuKPX
	 ORpz758LB81ljZPfEpUJF3M4dtl/DYwC1fzTIDh58/f5HoOUQUcudYkV9TkJAU1PzW
	 EY2SxXmivVIZha83aIzvOvEqgqZK+HGvsjoVWXG/UsWCfFB9viytovv/6U5MlNbd/D
	 ikslZ8qOd3taGV4skPvUdqLBG+Bzo27PNiokqJdWfAGlo/2ENWoGPtKXGslEFvnYF/
	 BLhJ9nE5tSj4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F5EECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197845332.24488.13283337158294667546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b04589833ee634cc91c912cd7c9cb36449d922066999719da6f5b2fdc515e43
Date: Wed, 31 Aug 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661978453
