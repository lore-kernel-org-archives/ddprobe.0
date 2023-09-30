Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675B58F5F
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 10:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8A1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 10:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696068368;
	bh=03b+xt6w+FlhqjV1DwYL+MAb63GKgpoe9lBMP0keA/o=;
	h=To:Subject:From:Date:From;
	b=IJOvwFfwqDAYJffYGxg2rdbQbovKe92ekDLvgR6bAZeUwE8rx3a2zxEJqxHGK+5sw
	 awtPFup57ZjfNgMUA1Tk/MnRlMgaxqqIoQ+0gHmpLVFPvcl5wh0Q1AgP+E5alR8fih
	 /Nc+oN/ZzANEJ+TH6UbqtZPiJQnk+L9WqcDFov4N/1JlrhfxbYUNDui8c/XGgN5ID5
	 bX4hP7O4L9RRg9YgTkQrJ1TaE/K/hBe0+iaeD+34PV7gE2qgAdC0WM95VyuQUmtQyq
	 KMIs8+w9WgD+c9rilgCT1gDlWuzg0EXOe+nRHJkOGzgn+byy76tzTMmVf7JzVwMXSJ
	 /qMnkBZA8q78Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0235E77365
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 10:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169606836868.4595.1795115286098312577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aef86519d7db1028f2356681e2d7e1338c7f59b0c35ccf3194a307432ff7f8fa
Date: Sat, 30 Sep 2023 10:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696068368
