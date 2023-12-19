Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062C039AC2
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujFbrJ8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACB1C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703016496;
	bh=XKD2/EXdSle4zrVp9+C/k1ILYgIn0Ehw5IQ7RCv5zCY=;
	h=To:Subject:From:Date:From;
	b=ujFbrJ8I9y3+7usEolIoyQZoBZ9hkoQtugtiBjZch6BkV5nAJn2TDmbbN+UlkPB7B
	 Ys3wxPLCnbFUdXNgElOn/97hyt/UYhsT3v4SCrtfnvr10ebacoVuWS1S09oCn9CBNv
	 4YwF84H+Wn9dW/NUbW5CwiEyuZWIXDTdZByEffIO9bCEczkkdxsbqoKj7xSrTJUGSR
	 IdxZdlIMadxZebP0S5X15We6AP2+LQxIIURjZ8EmfTY1Gi8znJtnKe8Y37mSEmHV4z
	 ia7Bg2DATWFjUGZdmgH69eZacYLR4bnMg4vWrUiFayegHrX7RhflVE+GtgojQSjbeM
	 eAvQma1ikd+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0C3C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170301649637.14389.2830794546434469745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 370d499aa47c022f4cdd2d2f872234babdb86f9e74b0ea52dee1777d68227be7
Date: Tue, 19 Dec 2023 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703016496
