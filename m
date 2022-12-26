Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90BF624
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F82EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672086687;
	bh=3Xlh4hxmc2HiSik0+czhE6DmkobmdHfs93YFsEmPGk0=;
	h=To:Subject:From:Date:From;
	b=DGABemYyOW3XOxiMSkWo+Q7D4izP7yu2ZAa50EuE9mIrq/W3TrM4Tj6k7oWTggSkC
	 QpiRt7f0vGB5PnRtzHv1yKNgb/IuT0etv9SjHmEyqtmo9UhpNIe2dqnqV3KODmFKje
	 8kGNMbx2xUSV8iCzK7VfDlkCgfJPGncxfl0n9pq05+r51aR5Ehh9UrZ7KpBTMVQQfu
	 Wg/4ehJ0Jqb2MwLK6r56H9DXGEpJujrNFJBprf/2+oG7s9/LQERpZn+kv/B7TlMiik
	 d1M6uxYZVAITW9TS4VCMaRu+P+vvW/R1//g7CkWhamQ2VF10XuGaucImjo/UlZwO8O
	 6N3d75CIRUQAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 725E8C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167208668740.14655.10229614118408007489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe68c98b19b65de8617300453add943654c66b79785f7620864aad1149e9500
Date: Mon, 26 Dec 2022 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672086687
