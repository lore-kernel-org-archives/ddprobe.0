Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2985A460
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 795BEC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667938254;
	bh=NoZtkAGBx1PvmqXZyHOPI4boSHQvwQnXMREviXpA5zg=;
	h=To:Subject:From:Date:From;
	b=YMU9DDm9oiJE1gpDckv5wCsnbS8xKR1zqgd6/CZJdDUcf0vn0lTOHafQcW5FtouEg
	 DUA9XHwKCxcTPwFkvuNRogg8XxjxyYfmsyr0IzeraOz+cDM0h1QGplvIV8wlNfbpPc
	 vj/9HgW4iMnlAqKGr0DPPRfBlLlBB+/UqsDWE+Xx9DhS1xRmrR21AshcrIP9pGU/Qd
	 jenmSxXp/pacn18jWGYzEmfvo4RZTHbtC0wtPaMpXnrl/nwdRxJH/fc+nV50uhMGgW
	 c498bZayd/h8P5ERDc4+KNujttYEMsPQOGbVnHFdgyJQSwOKKPt+MrrVA+1bt4NnVm
	 PaVieWtUWiuKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EA4DC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166793825437.3874.18280068750222545333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a637a3ca9d65977d0bc5e09ead6f161811fab724f7efccf39c66a5585e853a
Date: Tue, 08 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667938254
