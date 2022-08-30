Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31DB3200
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81827C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661865653;
	bh=j/RheCpY3VmzVNkjretHKoR2j9lS+JEC2Qc7uGvLDAs=;
	h=To:Subject:From:Date:From;
	b=CwyLIm70PmkXrEn1iUec1Efi4xZPwiK/nzTw3PnfehknLuVGAdbcgwyaqiTDP+6mU
	 ctsp3qnr4P5xOOOwIGpVRS5hU8WTCO2G2zsQcIyQLxZKBG2PiZiVgWakOuj1U4vkr+
	 EEd6Kd25+sWQyRYTu5VGYtkmtR9QYVXz/YOfQ3/SneY1cFPsDNrlRXOO6iGP1GPgbq
	 ev40Qctqg+8qapVhZj6a5jDtyumG9hI6QSp1zrG/UQYTua4aQCAic2VndUoNBDLYw7
	 Niq8lj05l8rxnfi6+sF+ldXFryn0k86FB3oSf8mFvESbeBw2IY85g0unhiIW76uXZ3
	 3KfrRQdZccxnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66735ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166186565340.5576.2149284953748759113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e453bc0b41821e1b038f02d750c0f656c1904ad8dfc5851404d464cfc0c279
Date: Tue, 30 Aug 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661865653
