Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8445DA28
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 03:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9653C433C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 03:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686972548;
	bh=YXMoNliwpwLR4CSBqziOi+f7gwJgeQ2fPBCBK5FWqUY=;
	h=To:Subject:From:Date:From;
	b=n7sK1LE5fRW7NVPfHJfj9j4H3GIQl64p1+uNUGW+rQubTJ/HrUwkHS+kqou2FpZU8
	 ToA6GlpRLf9Pc5NFeMpE1cZxQCk0hYaD1e0tSXCS1Xvl7e+4WkmfTxSkwKtu2Ikru5
	 o87+e3LoA14rW/qv6eHcX0elC5sUCS3gx33uD3m4KVTiU1qZ+Fyl+2Pr2/VesiHn+l
	 7Xb8d0or0j+rbIL2cOmBNMnd2dcj2A48QTIMx3FYpc12i4qRw9Lr/n3ZJ+ZZUX9dZc
	 NSCmm7GHVSovgxFLf3ySEBIoNd8K+kkGNRihI95O4O5boSqstajF6pJQcihBq+Rvnp
	 7sCpARiSx55vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C389AEB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 03:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168697254876.29413.8167019279561554712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a79e09aa392b633f71c030d0145c033fd457a4d8d5e2264753be9c59bbc552d
Date: Sat, 17 Jun 2023 03:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686972548
