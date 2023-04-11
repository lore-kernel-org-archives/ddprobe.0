Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B32B17DB
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D576CC4339B
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 23:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681256525;
	bh=esSt2gnXIVJvaxuMMwOO5/qNBlS25Bzp/o1Xz9aty80=;
	h=To:Subject:From:Date:From;
	b=B/UK+4iGxONCQQWBWbFksJMMltTHmo/2WV8xGBbNJeMc2hTihgM4O5MuxHxrjnEW9
	 ux98m87NnHP97Sx4WhberA01NX6EGmBfV1zJw6F2kkDWDPs04YxM5599elFM0xPYaQ
	 b9NMJYEoAah3AwGYfHGngAPW3G9ipHEG4L1KMSJQlrjjldtgL1rNYnjhVF2s8DS6Cy
	 Pg3LXq6OA7JKfxUyT+hREG4ULBKD8QHdFpeomt3++VWKjPXZ+nvH7htCZyx+1bRlmy
	 V5apP0/bdbszyc/58Inue06nsCngDjTE9UsRGuo++BkDpSJYss+5X7iKaq601b0g12
	 JrGluiEnU3itQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD1DC7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 23:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168125652576.32018.16234578849957831381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f536c2bd406bc29cb14d146600bcb593dd71593b81d9a069d78d6582b8e0ee6
Date: Tue, 11 Apr 2023 23:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681256525
