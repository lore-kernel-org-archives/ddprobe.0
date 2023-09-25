Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 723D37F
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 04:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9795C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 04:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695615308;
	bh=1z34O7haIUnvkhZTbnrawIC6g7vwlbtBsltUXjKqzTo=;
	h=To:Subject:From:Date:From;
	b=U8n54qIt2JGX93f27uX/QqGeDwcoEBfKojIWWKT7gYfhVOUzwJZdxj9+9XvC999s6
	 X64mpJ1HOBl6ONP3Ys0iHw9x88+19NsL2FGsblWITw2nzre9oqC6WLbffbN1bx+4hP
	 D8vPdFQJ/yd0FMcmAwSZnqJFUzANNP3DPaZ/GScJSyYa+zvESJw1inuo+B4Gqirysf
	 JhpMueTY5reniSyyy9lpvM99PTsffKgx9VBLJNSIGmE02FspsZUK2JlUWrf7rGbhLt
	 KaM+yUjkhDr0BFgvQ2YGRQ402g/c1p4o3i8o8BooLfeDyXvgcgm51/w/uO8LZ0QUAg
	 p+EBAPtcbZ1Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B915BCE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 04:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169561530873.30345.6630250016489190591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1f7503f2035359e48a5cb03fb8652b6f5e371acdffe92e5dee6dda6b899d92
Date: Mon, 25 Sep 2023 04:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695615308
