Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2DEC1FDA
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F04C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670836287;
	bh=LBz9ZPUjA5GBc7CbSnERfZ+D19n+NF4U+djKIaHmZJs=;
	h=To:Subject:From:Date:From;
	b=oeofNY2ikUDSpXTd8S+8hPsK5wVGGsIQod33jzU0H7NN8CBw+/HNouBrHlluQhiPu
	 gkkJzpJJG9aMHTtdxOFFio+eRkAJcNg5rPsBg5I/9SAz9ffl/8MBN7DRA1b6Kxk/gg
	 bmVTuf/X3CKMKWfywvtPX+xpk9DsVuUDnogc6Q3qvzHIbdXpyISz/p0K0oZdhEWT3K
	 ixtfEMCqBjQgUCyBatxyeowVOxg2J/G2KPoW41jOQG2i1mA0bHO7gUTmWUuploLJ5r
	 WKV9ZeWixpqpREwd10u1aCT+vbTf2yHaSLNswYpO9SsMWqKA3+utgSH6Hl6TcItY5r
	 m3W2iD1nZu3SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640F0C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083628740.21509.1616889642822079107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59dc34d87777d9ebacc4dcc86e960235649f539d77dd5f895d390ff9ba61c83
Date: Mon, 12 Dec 2022 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670836287
