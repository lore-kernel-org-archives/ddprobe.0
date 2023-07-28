Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46611C8C9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 11:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DB7C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 11:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690543928;
	bh=fnJRRvYwqUgauNRKMT76fGparGF1aXEa0duiMnIj09g=;
	h=To:Subject:From:Date:From;
	b=AXpJQ6zo8TJTrfFE8C9Ed0VbPQrsl/zP6fayECf5DrL4uwS1OaNfLX7L60ixaXAUQ
	 dIiKYkyhqcvUrYiZ3J6y3t1tt7WVHa/uph56iSuW2zSHm3wEqxlCa3oeCsCwpDabG5
	 wS+xcQLb+U9NuAnrwLXsgfJo5F9SXF01uyG78tF7aQ9FQaFCmOIhrJAlm6/Cg0JjRo
	 ZgoiuKPDdcqPLEJeEcYamRJgpvS8uO4AQRNvVxT2W3eFq4CbkcFuA36ji8b1R6+oGh
	 hkMAmDdQZ5/wD2yyGdu7AmZhGL9HFlmkgDNxz9WlNojYoq7S/uQ80zSlrKHUabIzX6
	 ScspCFOQNx4BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB732C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 11:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169054392869.18083.11619849949086605238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0027aeedea52b85c18a2367f841fba4db023e7414657c83011f9f7f85abe3396
Date: Fri, 28 Jul 2023 11:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690543928
