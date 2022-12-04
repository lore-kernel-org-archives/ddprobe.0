Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68AC15A6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F8FC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670125854;
	bh=lCEMhrZuAQscSWpejZoMjrO2+lm8ZxCi8eMwuupf4nU=;
	h=To:Subject:From:Date:From;
	b=bT/i1cEHzvUgy+Cg6y0OvAWWHis+M5rhXlFGe9GaZMbdV91BieZVheTt7yo0bxJG+
	 zcZ6uHoh3B65BXxYgSRTALLg3MnWjOIU5JCWetTa1wNGDuypZswaJdxqJh6m8F0S2M
	 G9VvhXYrw81Gb4JXawC4N9SqUsjrOH8pSFTzRhzXXWlrvyHlhJEZ2tZIS7/LOt+8AL
	 G1KXuZ5kGUQYGmZENtGoPGy/jzdZeBsyNZd/xGDXkQsSp4E6qTE7UdL3Qf2yJVGEIj
	 lb+n7IrmmuknaGFAYKhZnO80K2Oof7F2suj3oh8sVDmiPSlW+IGrA8z78wPF03ngEJ
	 a5B0b60WFU8+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57AC5C4321E
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012585433.31373.11474771619170174222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a50c7b55f8a90c728ca43e5eeb315cc17a237d7e1caa0b26ae4e80ca3534bf8
Date: Sun, 04 Dec 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670125854
