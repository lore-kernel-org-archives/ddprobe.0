Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBFBD6AD3
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2C5C433D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663362653;
	bh=0KaKXounr8upISwyK9jmcyEZOmHEKAbYWM1Nxq82+NI=;
	h=To:Subject:From:Date:From;
	b=TgMiDSZhdCOpwWrUHjm3HQKedQOvzRN4UcUKVoKSMd+XC1UQu3gzzNfs53iQ/6yre
	 tNcFq90TEIsXYF/rj6t2O8Lv+0yC4RPvRttmLFK0DoGGrQp2fFZr4bFNgfvPSKKIaT
	 r7je+y8UDpJyixeGPavAxOwur4CibfXSDUjqQWqCB8gcfTTFvKX43hPNVNPCS4eviI
	 v3jS8YBzM+RvaVTaBkk7hHmCksrx+cAtOI9PcAkzhjWls55QRfdwJdYjW4veM24A+F
	 1ZlWr92xxt8DVWFfpONWdA/D+SKp7RN3h+HF+dBvIPGl/P1IBzNetqUZgads4gm4/4
	 rGehgjbqGqIkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E58EECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336265331.1234.3106944544050927928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8666becc4eed5a345e50cf75722bf76c99696c2942ff44af773f65cde013616
Date: Fri, 16 Sep 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663362653
