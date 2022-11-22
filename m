Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C034E23B1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F8BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669120854;
	bh=I8dhzDV2FOGRAkxcAbU6YlaFpzNu2I4QEc46fb5g8R8=;
	h=To:Subject:From:Date:From;
	b=JX0scYF4Ff3WMclqPovJz2JARfhO6AmIYd5uK0XHOEM7ScjDgLNhjNb5XYIgpSlvP
	 CdvvnB5LOmW1dSOnrNwSattLZG6//wHKJXP7DOookZduo12PJYGdsKlbpfLlItyL1c
	 3lWj0QE03yBm/wszAClC02b8QqeWkbDmpNYjGqqRARwtBuPPkPNZ7H0/DPZI+3DHxb
	 h111gqRDw0oP/qny7nmEndg6IN7wQ6WDlbLm64uZHghZlmVhoc/Ncp5wuX+ucArN9q
	 HK1RDTPogUrgFPr27M0IIhV5ayYYS0JfBUPXYRU8QQxqtlSzC2fACUJdWoQ6rS2+Wa
	 vxGwGRAzRqtqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB46C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166912085436.23685.1830119922235671104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9508258d7016ebbd1defa1571e88855c0e8006a50466cb21bf4a77033b66ef03
Date: Tue, 22 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669120854
