Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F7D7B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F9DC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669959654;
	bh=SRuZA6y661bjP3X98M5SnAR5T9DxRWqEsd3NU/8yL7U=;
	h=To:Subject:From:Date:From;
	b=e4tQsMHvwZSB9niV4m1fGpr0ADOScSD40tAdXn4fB9Fep3nWLn82cNKv2gKhh20Ps
	 Sm5Hpnlq9iYYDWXTdPQydMvgbFwW7RQEqu9ZGvigfIE3vICp96AdD5ChoGRNvM3a2G
	 tKW6cJ+3+VJ1EHvrS6ox+gIB5g5C6JxplQqEJwxlzkRVeL1Eu7xv4wjP1GaGiPmqbN
	 32AwrUA7qFUfpAuMCKGzvcKVKPoTRDV/64eg0RNWl8QOyQEhaREiMwcy5tfDsfK2nV
	 CAI/eS3vbBXZItydaeT4u/ZFQDqLT3Bg9jOsLeksdhYn53vpUxYAfjRIr/CEU/lq+4
	 brini718nLSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B75FC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166995965436.22570.7599024466336418339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b1409e2b755789294075cb4e9ddc7fd3d2ee32c64adec19ea74c5f6ee05c51
Date: Fri, 02 Dec 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669959654
