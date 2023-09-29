Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B3610FA
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 01:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1316C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 01:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695950168;
	bh=zWhWJxlqWfYtfKlvvsMVeBhQ/KWVGL8cusvNetVzxVo=;
	h=To:Subject:From:Date:From;
	b=qj10lQ0nxkcrntBMadJgsaM6GAMdM0+UYZEUGwRfQEoNgATTw+pwjtIFKOtoy+s0+
	 ju1Dkbk0GBwRGV6kqdiDrXxDG95PnDlhbbW3VFVoZ3jzPCjTCH6A2sxI+lC/rphKEH
	 4Pkd980Ya051qLU/+4k2XzxHcSgHcZWubPNBdj8QdL7rsw4x07gFCE0xR5FvLOlwpV
	 BkFJTHn8rHio4Uhji4ppshtpmQ0dr6heYaqqjFmryaPaF5HPeRTxNPHM8oT9AuWaIv
	 BHfoanw5gV+U9z2orHvKaO2cFczquMqA9BW/M1FD+Q36zyumrMfi2Hhk1RBKwFlLzl
	 8mc7SVLeIIpqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DADE743D5
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 01:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169595016871.23586.2928538237867934304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a953520fb0586834d1569a737c273c715bcab88885eec91b8ffec5b261fe8566
Date: Fri, 29 Sep 2023 01:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695950168
