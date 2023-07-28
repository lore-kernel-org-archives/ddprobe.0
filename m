Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CAE1118C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 17:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C215CC433C7
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 17:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690565528;
	bh=U7so+z23P3+e5GXCg5rcByYiGKqxlsFzA2nuDm73XJk=;
	h=To:Subject:From:Date:From;
	b=exl7lXfmTf9LC+aT1FmXmGovhSfpzHpwVodhpfQMzsTWEfBpF8ZQdOG8DjuRQmhz5
	 QRTYM8EOsgZTE57FdiR5KM5Eshr2/KvfxedSpxmddMjnOewJsSTaGYKBkD5LyMbX7l
	 anwLFkO71VPur4shw6WC6eq+UPHBISwKaYKU18m/nx2XZEJ8GMjlbv2tAaD13y9O1Y
	 Kv4L2U+WG50htbbEzhFZ9NzVZ3vwrpfRGlu4wPxj7tNGlG24xB/uDBjNY2US4HjKZA
	 aNsWP+1yFwYS3QBpwxq1SyTl4YG+s4AqBZ8jahr33s9luCjcn8P9INUn9X1gJc8T/E
	 99SvicvDx+yTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85B9C001DE
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 17:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169056552866.21272.15244979590300089743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15a7682f02774e6dbf38c29fd2d3fb35be2ff8b5accfa02c51d216b73b0ba7b
Date: Fri, 28 Jul 2023 17:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690565528
