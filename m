Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543981365
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 02:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9340C433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 02:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683427685;
	bh=yW7qQnaZPqoqm6Pyhc1e3aCZ9JuVkCgL6JYPXsnKgXo=;
	h=To:Subject:From:Date:From;
	b=Ss9FMmD7JimnTD7YuJd+O5U/YYCXPyW3HHbOxKf/dQRwGRYfNu3xUALgQagHHaG+B
	 SsBC8EdnThWo7a8P84axU06McBnudeozZXfbAQr83ibnXAouhF05CR3EQagQSyh6SL
	 jx+9ZZBE3zu6W9nImmNqVsScel604Yc2BAYyiXus8FIZSdpCJnkCMgoMByhXGUhmgP
	 ESe22N7LwptS4KJIpc21U0WRkYVI6ICq0u3tr/GwC9iqO1nHniTo01HQm7/41jtzJC
	 51NhOsxtVbZzmMv4zd3+wdwiNymOqnzRkly2OnpcuvgjeKyWdsA5iK9XO1/TSLEjPq
	 FTRDljk/TFfuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC0CFC77B7F
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 02:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168342768579.15432.5235550092242307021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26cedf26a528223a4b22f776a6ceeb47e804de7aae779fb5462c7b92dd1030fa
Date: Sun, 07 May 2023 02:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683427685
