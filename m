Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4033123D5
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 03:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E233AC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 03:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676346845;
	bh=9clvVI9BKZp/gcexoOAKMUXZxDQl4DSbRbjcRqkh/os=;
	h=To:Subject:From:Date:From;
	b=kzQk/7Hp3FcVhYKJFvI5aIyIXejp37/NfbHhhN1oSSIGpE3OgRORp5zDj+DUlj2Hr
	 s15/JARysX7RRVZWOJ87FIi2SIl+/I5g/wobY3CR5RFcEou5bYzze5pCnNoKD1KiUd
	 MBA+DbNqVqCffymbbwm64ymhx9c6xmwwoQzaUsqxsfzNkSLbLQZ4Dkf2QVemDZtpXu
	 XnKlNK/gv9RY38XoNOTua+ncC8p45AFruvxm5RTg9JO5tiWMbUdnTjPcN1poiYmjxN
	 xH9XxKqSJO7VcMS1ZL7n/9Vl3sINij3f52ejerEAG9J8et8R0S/2x/VYrAioDEpyRD
	 IpW31rkEqbmxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4821C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 03:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167634684579.9088.9535259506904625789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0ae472d95ef4b97162d2fbbc947f476ff64aeeaac8530be10dc0a413ea19e4
Date: Tue, 14 Feb 2023 03:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676346845
