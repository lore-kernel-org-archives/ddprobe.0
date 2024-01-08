Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2325354BC1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvRC1Q5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94008C433CA
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704734296;
	bh=gq7TzExIugrg/HE7Rz/floJxD3G+Qjy1zhCDgLuD5XE=;
	h=To:Subject:From:Date:From;
	b=TvRC1Q5hjQNB3CFg9nfz1IrmAR+QYMaVBPr+BDkA2Yw3QwS4RDihLGtdiibYkiXBc
	 nDCNUTQKzu4QxKbtBEUnBROVqDiMLY305ISy554AiC8hVtiE/tsKVPZechk2j26VUe
	 P2W8xClC9f47temXh3OrmHyGqznF+KlU49YrvfYl83aPaLLabn+bj+JUyobPNADKug
	 YXRCjFy1yh18cy7PCxf5tL7aOAEhbURGrs2X/OiDyZOnMMyPxzgymF0yR1ouDAYV5i
	 WT++aWDwtg1jTQTEhLDYrY4Lm4/fygJK7zCHTYaQT49UdRKDQ63Mi2EZFWi6YIepxk
	 2S5cAQjNtARrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7671BC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170473429647.29457.17453629874548552763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80aa54234d14f7b43690ad07db519ef240a466f7a796058c0bf29794ee50e2f7
Date: Mon, 08 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704734296
