Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489C32588
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 10:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E401AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 10:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678443305;
	bh=w0n2Zq4JmbHVincnVPHXWG08s0d3alJxGS86DQPjsbs=;
	h=To:Subject:From:Date:From;
	b=fg4QfJPOz/tU21Qr7GKn8SvGCeKp8Jy3Ft/2sa8NrVFk0cvCyzfvW32K6z74tEILi
	 MXaS9NGz0n41bf7u7oGxKVXDFHrCvvB6WFK5MAEBFTV+GZxu8/VJDY4uxoYChZuoC+
	 NBmhQrGTDcioe6YdjdJPeZWXY21BdJFM/h1+jKQCztaXz9oyx6UmDcrFoD2zMEwtPL
	 5qBmtPOrriYVFmqolP0zfY9T1wTfK/Rb/gHE7o2qVwi8tEP4nxQT+jNrvh8HljHoRm
	 n5sVj9vv7i7iOBekKK9mCkMGx1Me7JFF/8Ls6A9+47Ug845TUgLb8cRMy2BI76dw4H
	 U6ndAM2cX7XUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C709FC6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 10:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167844330580.27204.16441303545420303285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caeef9e3daf35ab68510439e4aff2a1cd134cd376af251ba08d3f045ab402158
Date: Fri, 10 Mar 2023 10:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678443305
