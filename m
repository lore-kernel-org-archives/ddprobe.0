Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCECB3D7A
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70576C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665514253;
	bh=Qzuda2egkohke4Mha49ZebRWH+s+TBPe149xev0CdmM=;
	h=To:Subject:From:Date:From;
	b=bQ7wYAUrmqgo4icqt+Q7edaU0xUPnvp7d4POqfxUxiq/VKPqfHsZFaFmhHjbynj4T
	 vPLgpAaBYpqQvpPhMNYir72vLJUDP+w6yzZdE8YYkp7elIv8R2HvtWoRzs6GHXxFrb
	 EOk4HMX+0TCoZE6bdt+bzzPp7TFgk2Pf0/ikjLY3c8vEEqEsuLr3dw3oyta3pC7Nqu
	 kKrY4nyMww4jBXh1tA5SJIQnlQQT2c5Xsd55mw6WZ1Bx33Qf+e+Dt71Pl9+9jlrAdU
	 t47G+ayHolxVWzHpTu1/gsRx1NXnn1sGKwlify58TImUOJq1itxbSP89UwECp+LQ/h
	 N56kOulUUfLLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556A2C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551425334.15253.14067279501071778468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6c117384c7b4fbe2e49936c969a8facf4e69f81d40bc466912458a38c68f378
Date: Tue, 11 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665514253
