Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C981B7B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E21AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672066287;
	bh=QS2bNjljdtbvFOHYgKTwTPVbL/20oBs/8aVXmV+8QHM=;
	h=To:Subject:From:Date:From;
	b=dDbInyyynIva87XUdIM/2A44/77HwY32HrVo/fuDV5PXSYuiWDQPeEaZ7w45wl9A7
	 fHuRzz3mEaKniTyieW4i9/53SgrsAP722Xd9fjYCDtkTr7NeOzBGXP6YfsRnPjg1uO
	 +857kIXTs8g7CYm9P5UxmdRJORuf+xgCdB/7YHh0Nm9jV4WZxp+dOsMgH2T8NYygjJ
	 a+YjHd1oX1Rt0Hr5pf8hyyQKfFL5RdrQvZAn/7iJd1DpY3ENADw5Dbc5xpEoCanTRm
	 ndx4ZL7AiYMpp5zGXngXhWaKj4q8pq1v0eJpEt5ykLVQK0gHb1Tq+N+YpTxKzi+reA
	 ZHE44bwRr4UNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C83C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206628739.26040.18198421644619498438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc69bf025a0eb678f5c2bdb1649db34886d3b445f687ea89061134d007accb20
Date: Mon, 26 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672066287
