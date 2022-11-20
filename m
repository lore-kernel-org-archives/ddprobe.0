Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8137EF
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F4DBC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668934854;
	bh=I6ngrFXtA2sldQheEYGaBwBKRmjcuq+zHJEdLsCi1DA=;
	h=To:Subject:From:Date:From;
	b=tbXqHHiPwsu+60WbJWvaOiaqpN1ZZGDWfSakqG+t5ky02ZM5SNPoC2h/J7tz2RmMD
	 frOmyzJmvq4TFe81KoIFpGtQz7w79MbjVFJpiqixyB/eQTmMsTovfdxTCF5Ixcy0gK
	 P/LHBzc6HoyixA8nBq6FKEJdsymuaxZB79EQTZDIy0+mnU3LPDdkPYzZZaTCJjDIob
	 rT0nIPwVWa0FXw+88li1s6d5GoXGC0KqSEwKyFodsCu6cNDb7jZ8W/ZMDjQ4XQBkmi
	 6N+EW4q2H2WLxjoZRB8fM3vOX4tTpN7f63Cf3namHVfXKBYB6Bz9I7FcFHixYOGPLV
	 STNSH3yV9nRJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513AEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166893485432.2173.6026907302637142233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0582411a4086b9973995fdf1a3030ff2501fe87aeb2ebf8a7eb12890022348b
Date: Sun, 20 Nov 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668934854
