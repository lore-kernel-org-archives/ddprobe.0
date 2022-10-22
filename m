Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C70E019B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BE82C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666429853;
	bh=W7SjF88TRK2KiBbw14tcnPJZhnt9IqeuHBGXgXS2/ZU=;
	h=To:Subject:From:Date:From;
	b=oQiRURkWf4/YgvLdidBiEOvzhhSgMEaCop6CbmKGyOnOHTQGoQyZhfwZOCmkqDdMc
	 OXJrHMIkVGWZAMKkiAy1VklRGjJoWntxkL2ZDyCF2FSFsextxmcVW3b2ZdnHuiThcT
	 /krxZLBonBjdh1okAij689gXygm8+3gtb1Dd2N2WmjVTg0KMu/BMe/GUrIl89sR4Ms
	 T8IF83tMGsx3CmZhHk5xLSAM9fEqpoNPRm+MWtKWlH1+z4EIQRsFfQi/ON8hJalxIu
	 aT72yh96m5TNiboewNVYyzlAHFY/mIM44EqZoOA34utoct4vQ7/vS3x6R+vAse+eHM
	 cqaNQKH1QsDzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A73BC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166642985336.2307.9553063262678994585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a941dbf1d2eb6f718e18867441f6b53a7ed2006261cb80634fdd5fc23be9fe5
Date: Sat, 22 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666429853
