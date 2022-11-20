Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E6E7EC
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80077C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668942054;
	bh=/vEXEveuwMj6ZtFE+9sJzxROB487dNHuCvTm8MhuedM=;
	h=To:Subject:From:Date:From;
	b=jDNdUXRj5CfSSvoWEzKutLRxpUrcu6aIwTBItoznIwmDR4XiqRECHGSMau0RX5Hok
	 3DlKqL0ADBS3L54BL3nov0m1mEZWidfzo4kzhWTcGVT4LyQ2jG72v3bC+VOEWsB4GL
	 6d3n0tA8dyGBuObsvZsLxZX6JO6bRJckBWN218F5eSmZ7JxuzS3znOymSQgVL5A27h
	 LvBMuJLSTlvUY731ekz/t4VarrBsGVkp84U3RA5AG47P+nIUya3pchopKDatL3G1jW
	 Sx90+WVT7Gy0I3Nk6I/mZiJQM+4z8/A0++zdYuN/44AdcWmX1so/bzPkbdS0YueT8L
	 KWGrHxlnzdEFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE52C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894205433.27074.240617951037944677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb94976ae99fbf37f385618e3daba9f01df161eeb3b991198482d53731429005
Date: Sun, 20 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668942054
