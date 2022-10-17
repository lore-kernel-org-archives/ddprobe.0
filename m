Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65994A13
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B118C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666048253;
	bh=CISn9/VN5saGypQr4PVGfCNDEsDsc93N6H607N8lDrk=;
	h=To:Subject:From:Date:From;
	b=JjtdpcVYvOcDLJLSG96w56G0ZIETlaFssoaeMhkAgpwxakPkMYpyiFMt+SE4Us27s
	 FR21ym/NoQH3lF69WnkpAAvOhIFAv5NS6oCyAEotgGUENtpC54ZjW4nRI97raV7g4S
	 nu3tpzluz2eB6i5IM9ssnSRHvmBrccqHKD9W0ysmQjidgiQVpKfvmZbgax54KrcIJ+
	 i/l0eAeUHvSci7OkPPi2CSSIozgpdNGduzeHWTl0w2lezy5rE+2/T6pVqF1vX4BTb1
	 RBZPyNuZ/zZRcq+8Qo23Bm6OimKm9kjd4XwrKSg5JJ7HchxyFro0Qvjm0dDqA2D5Gs
	 qnLhWN3rckT9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516F6C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166604825332.18320.16726050927369024089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368f55c549f01e2a97633e11588985400e1b11ccfc08642fd36f82dba329c0af
Date: Mon, 17 Oct 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666048253
