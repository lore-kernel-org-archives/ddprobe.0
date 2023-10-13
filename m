Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77402371
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 01:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udOa7j1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED92C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 01:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697159228;
	bh=R2qlxoKLdjJiQFAeeY6xB/2jTAM2aXaPXUxa7Z2Rj+w=;
	h=To:Subject:From:Date:From;
	b=udOa7j1nA4p/TDc/XjLNuirvJVy2EySvsDH14lp+WxnYt5KE6uY/UPDe0BgJG8Lw4
	 iMBmzfGDu5QNwsN1w+cdKIAjUquZTdM5OcrOK2u7FXLC5CoYUUCojbhGgLqEiGdyfs
	 /1iT1LObQdd/fhBOKYQI08Mt4lEC/vvg9CYhy6bh4OHvYCtH2yb06LD0XO7+M5aC3w
	 poStuM44s106xwvxNTW/OzmGAQ/W9UJpeW/9Z5mPm37E0ZWtAeQ75T/60dnSH8K7wx
	 ieKblAUMFgsqCsQZbFUwBXn3r8UvWoCGojvbFkqHx46mpsGQ9jIqEKhjR4d2FeyKNx
	 BeRyNDRWWOTpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E1BCDB474
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 01:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169715922872.8100.18214321236233023914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd02563c6662c5aa986ffd7b45b074d3ec9612bf1ca06317f884290eb013f7e
Date: Fri, 13 Oct 2023 01:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697159228
