Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48B51EB4B
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pvxb2Hec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B26C433CB
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700826496;
	bh=kFD6uNqwIxGbaCpXkW1o65HHA7bs/YKpoWd7oah82Mw=;
	h=To:Subject:From:Date:From;
	b=Pvxb2HecfmLgM57h9VU1IZ/fepvOh12aVmMjlTeobiE/JuyzPnmC+9H1IurOQ+uh6
	 1Au9jDUX6MMvwbBKR+DItfILXJ4E+xRCmdRyL1yk4LUkWam19PkJnP+3lp1//I/Zmf
	 JyU3s96NoKNOrHXTw4AZtEXRCgh6c5TY+nd7G88yEFNKraAUCfeb5es6Bf54iPuMPn
	 pf/CAFMaNmrZRSYQXkYq0uHp7rcM7J+ySha/9TgNg8j/oEQR7eittDjIOQMQoCV/nG
	 W7VCQoSVCanYZiH0Py/Nrx/BCtqO1TMusTkPzgd2HrUjWFiuV4GW/sPbuTyTvBP+3F
	 IP13v8h7Mav8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE85C61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170082649638.25190.13208459126239109019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2036cc395926db52295f243bd608992309a7a55868db71856e2dbc1249f463
Date: Fri, 24 Nov 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700826496
