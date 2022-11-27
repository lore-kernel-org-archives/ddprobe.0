Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5AA017F1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6D4C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669536654;
	bh=V1rrRZKg66SRSzOb525iClh6anWOlHWftzstDJk2obI=;
	h=To:Subject:From:Date:From;
	b=NVoVigPcdd7/2Kg1sRUulQFjftuL+cOeRQUtTd23V9yS8JLOOC1/d6+BjidTbP9pv
	 fNgsaFgI9ldhk2g2OI7wSdNdhSfLiks5iljm3mSVwsuz1Kdfm24MWGIUayt+eY1Pb1
	 DcwGYN3DXPkSTUGUFX7XjnRCecRGkkeOhZI2N9SOXI2+Z3/ArC9zBHtFMBSabZDqdk
	 qZxlUrX7jNO3rdFFhjc5g5rRe/QrBi3AA9Z5ZlnHiCLW8/3O5f5nOKGJGylqCqfAD7
	 RrCkuEIMLp3W4CSjI+aWxJLf3TGeBvI/C5UgVgb1OZ8vV1scILN1o7v4TEMTvPMSD/
	 ap+NSkKBxtuFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FEE5C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953665432.8959.13419741810908468627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597be097af43bf0d56bfc75200db7cf27a66388bc546d0a5f1d6c37d660aa353
Date: Sun, 27 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669536654
