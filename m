Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B0AD524
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 15:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5ADC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 15:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687534988;
	bh=C47uBmPcZBMnLOFwufzYyZ9W+PDmPmy9dPxwGqd0Qvc=;
	h=To:Subject:From:Date:From;
	b=h2i0YttUeEXjPRtfnfvsk/t6ISC6I6fGZo5/9OxMLG22kmG3WDKBImjsawEbdC+v8
	 k/ndVhweQSvih2W8tItld+jZ1DuzoG30TSARnCh3j/5GmZcdUNZvqqz2DdTqxvTS1M
	 aYQ91AvzhLI6Ti+3+Q+EdDJBIzfWRM6m3V7uW/ZvkeBceW1XNXMcT5B29HC8rAMWUu
	 OUrQ9iySu7tmubry4myhbNLFXzYEz7Y+j1L0VaZrPbJebA7Mo8rsybmsAsy4ACAVXo
	 P6jmyoFq5904CI0oOp1YuCuKT6KcChW7fqWPx+rc5+RZoqCs6XWxlt5/QNU1WplLbD
	 cryA/STSyvBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4AE8C0015E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 15:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168753498866.5419.10032306412648696627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 839be6613870747d5ee45d4b6d100955c93767c599eeb3a2d2feb0e0b305a8b8
Date: Fri, 23 Jun 2023 15:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687534988
