Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4E6110E3
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E0F6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671370287;
	bh=lBTTB8uIbgYmMVnuLvVfdBdZgOqVhdC1wSx6/Ijmj/0=;
	h=To:Subject:From:Date:From;
	b=O1IECvIttS1ujNTA4CN/arZT0sT8NsC6BjxbtlN3PlZIRgzlvX2Lm0/H4Ij4H9uSr
	 tqklI51D+lesWwrAv4n8q0HzKkRV5WkmlCk5pr4l1i3NVKzX0Jd1hs5nH32gOnaro7
	 apUhFTrjZrKuMsDyaSQ0E1o1D3tfv2bxTRefM2hElzs84RYbYcD2bH7FUIO/oN+2KM
	 2gf3yyQBLciOSNrdMHjSIbLXRR7bNxTS9ItE/r7duFUtGS9lOw63RDdpsx9mkTo4Za
	 Mhqmqn3wkYIcVPmGtslxKiYq9Wt7qWJ7Z2T+M3o1cIEnj+GgIUBG25v+gbWqQwNYlF
	 gx6yKP/14w89w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61593C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137028739.14405.4254321289986271209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce65d31c8e6e2adbbb87b5eef6acc40b7d064627585514094cb0a11fe9d9a05
Date: Sun, 18 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671370287
