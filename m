Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9BBE80E
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BDAC433B5
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666960254;
	bh=S8oxBHvp+h4I8OJpyxZkqUAxb1GQiMP3gjuIj09+wyU=;
	h=To:Subject:From:Date:From;
	b=Yu1/YIgIJ8Dbi7p/JAOFkLKkINjKjE4RzxgOiqJYkB0e9Li68LuUw7a3ClS0urLfo
	 7TyZ3YSYJskVS5acBObeQatW+Qh4AR6YshvZmbHK6IoZcqyZqjefXrEXtpfOvrKCkd
	 gdDHAwWInyVl5ETHDlI8b0+CNUcpuIcT/bvRkGIr9aCy+wC7axcOKvtS/wr2UseGl4
	 1Be4Y76nkNhwy/nHCJ4OJiMfYidoUa9Zx+Yag6mX98xGuCbSlBUpkbr1J7XYS8H+P1
	 TMmbEt3fEztvNWh3wedw/Zc4LyoqrWpKssTUly3mQ6LKbVfyc+lHwpcfkd4L8+th8Q
	 ybT4bcmWMTqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CACECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696025433.20695.4756150763997009284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915231da8ca74b5cea8d623613a68e75872fa5789879974add66f7de14a94e25
Date: Fri, 28 Oct 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666960254
