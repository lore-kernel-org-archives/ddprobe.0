Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE97368
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 01:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5051C433C8
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 01:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692494048;
	bh=VayGOIrcSR7xgvV3LXs8TvMeevbChN6t6kYBO9oUx4U=;
	h=To:Subject:From:Date:From;
	b=e1zok2VjY2Zg3/8PnAzW16VWEhkp4d9bU8Z+rHDgcCfbm4RvtX/mnjjtQnw3rFRD2
	 g/2BjW252D01zQtwt/r3XHu7lUbw62A+AYQ+sbEks2EQAuGlGiULdtPneLqFzyMo80
	 RV8OgfG7n8OskTN4I0/k4NTUMYotkDtmr+uCEAtVY0XQjsoqWY+L8uwCIVrc/cCJe+
	 fTcu2UuBfZZP/ofuRCk4icGKOwB6gDXw0iKnILOzl592RgdWtiuby+O/zgZgI6xMsU
	 Zqjg5+1eNECd4FWpRskVXlUGL+rOLTpZKt/mpZ6dzmMnVSOCAmjNXinWSSL3y4Uaab
	 UammAkI6tozsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8812EE49A5
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 01:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169249404871.28624.4666116127521227563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9c82fa1c0b2dd6dc0617a6eb5c78531d02e35f4dde98d59f6aecababe39836
Date: Sun, 20 Aug 2023 01:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692494048
