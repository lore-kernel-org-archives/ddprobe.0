Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4912468E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67654C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662398453;
	bh=Ri+wdGzV0Gqeape+vA15dgUO2FHTWk3G4ELKD7bp4DM=;
	h=To:Subject:From:Date:From;
	b=pD5eEPQRtCXiq4FNI9i0TUHhTxHrqEmFPQIuLfi0rK9hJi75l4+qA8keG1ql1CH8Q
	 p14CJ3dpXRvwDJGirud+xRxLV6olAI26XHOP32QSXhu5TfTi9EQGaffr7DBW2R9XYb
	 SXqjXB/OTOAg8DwuW3uTl/TytDuCTJkm+hjXRyN5NIPIUyv+f/E+wCWH5tihD+AWT7
	 Eo3Ns9dSWhEysOE8iEwCRUil0S0c4j9MWzTQ2agNyLojaz9S45m94hcaaAJ+ahnaz8
	 E/GWGR34+dSCacfj5OTM/UVIa1ULbb+Iwy+qYGeQOREidQRBZw0/zunaoYMBqwuei4
	 GdKivDlQSw9aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504DEECAAD3
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239845332.24178.2921616836343592944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3e2d42859e477579682efd7f76f2c4bd3a639e2ff0c19e401fc5d5b6c7938e
Date: Mon, 05 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662398453
