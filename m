Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019CF2F3C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 959B2C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672579887;
	bh=8PRRhkIXt4+yk3IwpyrGnLEU9/QMLvmuOH9flzuLIBE=;
	h=To:Subject:From:Date:From;
	b=dsaMoRDQmF1AfS1BFHAdRhSTWMpN3yqnJUQUGUdyYV7MKDZpSua34ahhXtIVB2YnY
	 xWDvBXBihJG1I/BJYjIo8IVXJNjaIoEiD3W2cGPsMOVezAd24rMaSB6vVDL1h7CPPG
	 XtGA4kyuTrKRfw+88k1xaatgO60K7wM58k13oIJt12z2jWEQWL6Ycq3r4Zc36S7jdf
	 RS1n30GitD/YOAYhbeddY4dvheZUFD7hi3GIAg/ZBG29y/Ni3iIIhIufFTBoYJ42WA
	 iT0yjThkYlNs8PnR7q/b8R1sXbTcIW1/jhip3I3Wskku5mELCA4cRtfEM0g6SJN+KV
	 xK46Rt5xUKlrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BA72C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167257988749.12547.1451443535820076796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4ab8e159d8aa2d0e9d50153bf729eb0c59d068221bf7d1506ffedc03f007a7
Date: Sun, 01 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672579887
