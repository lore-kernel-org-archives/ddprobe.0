Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCF317C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8157C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674172887;
	bh=0lkRT1SAH4qzD8Ja4pmx+mn+2xnMvvk5SojncfqKQ2c=;
	h=To:Subject:From:Date:From;
	b=OdZXI4SZyvk6Azg6eaDeMPWQq/XlqR/w/Pi05tbGiWdoln6FCxr1RBIr/T0UfQQ7s
	 2soKRrBrBzs6W5qGAvAvj/3Hoz6ubL97u3uB+Qtkp/nziFcXby6xGn759dC+2XDFhx
	 R2E/A8DMtluOHgedjdxjCKlrE7bcfOrs8ydBp4nkpp6UTikBBVWKJh1L9QNZtulCSg
	 WL5epbxk1c4M+lv1hme00ndFpXnHg4CxoFADSZ9B8ohpn8tpVfmBAYbEqvzpJ2KsKY
	 qR9wr3g5HsE+r/0mwB/mKDFumcz12TuUU0IjMXP6vT9/zqw64kpg5YizHGqjENftAS
	 SuZ14IjcSyHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AA1FC46467
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167417288755.21164.9073035953234117659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e593f2b27efbb127c562325bcf4a9cf0b6193d2eaf2f08fb90eee2ec48d8b2fe
Date: Fri, 20 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674172887
