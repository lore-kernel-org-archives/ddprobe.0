Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75B77C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 650C7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661584252;
	bh=PY8dA7ezlrThCeSgf9ZQxZut5UpHBCX1aszwtBWRDG0=;
	h=To:Subject:From:Date:From;
	b=JSu8Qv+1/UcNA76dY13AatbBYoMZHiDAGTD2Do/EK8xPa6EcUalBP4ZrxOYAtvMmZ
	 T05rQNnarpymK8Lkaphpy9pck9BZEDAmOxoOod7kDhG2MY+2NfqRaBEAk6UtoWIEQW
	 fZIH+u9RshQIdjgVrqnAGq6dxMjdGxnGLgjGN698ODHYP3NWSKJ78DLCOFa23+5cKv
	 LZhwmYbgQIyXIwLvVf+veg95OzNpbERk/kxuISDlwhX3jREaOWbN/mcZMo+bAtt8Es
	 r4EuHLRS/fU61zq2RY1zdf+sbdjyHW49mljhUxwtfm9JOe6sZUPrznS8qmF0k7Gd6N
	 vBETeV83JhhVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F133C0502E
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 07:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158425231.31516.6479569784160691322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede6e69b78a3076c3476755774b56bf45679663b6ead6c88e70a623b95c40c72
Date: Sat, 27 Aug 2022 07:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661584252
