Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B615817F3
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7056AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667202054;
	bh=6FjLe1Zngm8dQOHmFbaIMMEM5/CB0YVu+9rLKkk0DoY=;
	h=To:Subject:From:Date:From;
	b=JJ0kFynkh6HGCk02EO62H+ZHhz4gdKXQHgqzlxz2vQZSeUSLrmoxoz1wWjdfUqNPD
	 32QuU9BxNlGHhU4frcJdzoNSg3AslSQRL9qa1uWk8WgTJ9pM4FLN499D31KlsSYFQD
	 My+7qxK/NMKfvts4IZRsuStAQxoGOkl8AcdvbsEQd04AqiW63KGmn+c21hmlex6/Nw
	 nfnhIUri2k2mNR3oIIypb+4wrPHjiQuMa1QSCkYtpNgEdfdxjJbwBcGTUPAbpnRwXT
	 KAZJuUPgAUocaxls6Gsg/ZEG93b10dYlxHH+hohoEDfENJpsZNEEOjpFil4+1xrlxy
	 NeEkacXFLhOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 520E9FA3740
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166720205432.15070.8738389284669122206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607a303028ae98c55ee216815d9f6caf97d76c992e2622a2451c148add8f6789
Date: Mon, 31 Oct 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667202054
