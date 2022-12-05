Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4FBC15C9E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7183DC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670278254;
	bh=tPXRrx2m6vmvO2YK+6dIdGhsyQz5DD/hx0ah5lf1f1Y=;
	h=To:Subject:From:Date:From;
	b=XtK2scb+Vpozu8VkZiHqOCYqWz6wl6g7x68TNtYp+vSLgTybIwOT/d+aYSj67sFAC
	 7akNG/M3baCjEVTz560wtLRSn4VtJZmhGVsQhZ0iOqnMAV1Qer3+pgREQPYBwlVCqc
	 uSeL9DRDL3jX9bho6UKw7PnQrDvjJm0SvRRJnvXQLCAxA+ZCKWosvjzuiX7gxVLqtf
	 zFDV1tvAphMp5Ygvo5av2C5m8z3IsdZ+2jAk1mIgwa6+4kNtPmeA5qHXs4PU+fo9HS
	 pFstB4oRHDbLIfpye4IqVX+D3jozVsXj2zUvgwe14FzOfWz0wRSIvGLHtqYEUn91ji
	 ryGR02cS8xdpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B34DC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167027825436.21984.14016285994809132289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf2bdbf93e15a4b73dcac57897847da7c50f9301c133a1cd4c4b2157cdc3057
Date: Mon, 05 Dec 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670278254
