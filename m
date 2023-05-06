Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3EFD2FF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 20:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7505C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 20:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683403685;
	bh=u5F67jhq3Yib6SSl2szFUFbT5NBNJGVa/jxChyvyx5w=;
	h=To:Subject:From:Date:From;
	b=tTdjQ+BdTzRs07ITRGf5qbvJEKiZLgl8qBMS9WvxTvdudOL4C9FIo0Vkqqirz764N
	 iHhJvPFNxfLKvKn4e3BImdAv0P4sGZsh5BeId3GUBXLioZ852PGu7hlJAECL0eT2qZ
	 fVmT5+yzfgQrV9vF44roTNbC84mFS0scfWVeG0cSZLX0U9A41rtOpYI1fv+ATXDBdU
	 0RB+/+l5wpWBWLeTSnXywovC23A4A6T6g5yudZbNA7ROgai+T9gF4hrLqhPLCw5AY+
	 OEA9G4h9MAqc6HEJfolyx3dTzzWC+gvWG/4wcRC+crHNLk4tw/Xms//kOyYjF0g9Sa
	 GBhfUwK1mr4WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3636C77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 20:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168340368576.30588.15714836698227784476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea0702aaaf3a870522913b6d7b64a8ef5e9bb0ff4339278f2864a7ccf6dc9289
Date: Sat, 06 May 2023 20:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683403685
