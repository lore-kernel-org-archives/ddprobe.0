Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E819191
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 00:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5DF3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 00:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679704265;
	bh=K6RmKCc/2qq4xrmnFmk+0X2AAkyhaKA3yR5923SlC/U=;
	h=To:Subject:From:Date:From;
	b=SNPh5DMM75k5l7etyYhLF6I/4R9gFFjJhgwH+hZx5XVJLfauLx9CZD66qQTzopMv2
	 Mj0NoppmncbbBTY/Me1reeL9g1FK2TB73wlrNWVtzigPvL8z90s6OWTWugHjxPWXQc
	 OhlowfsU9NV9MHJlr53OjjxlNLdQzZn7BnuYrcBchqUjT7bPvQES6WBFLBzcbp9lB7
	 QvTJ8BZdtOu++4yYYREEJgRRBgDlzvvqd5Bk/cjBP7XhBjvFppDWsSiaHmuzTr1XnQ
	 GGCyzZdngNt/GPuIQ+Tm4KcaKO/ytIa8z0TbYUkRgwgO8fnV70zaSySbo/QJcEge0r
	 dgvrrG15J0ITQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C859DC6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 00:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167970426579.2989.14782490693691521777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21ec13be61903eff2623c0f6d3fd043bcd78f83254f4b98ec01bf1762ad115b
Date: Sat, 25 Mar 2023 00:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679704265
