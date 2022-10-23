Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1305160
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7079FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666507253;
	bh=foUkSZPVLBdnR/b1pS8EnTsx74a9kA8q1fe1Kdxclos=;
	h=To:Subject:From:Date:From;
	b=K1Xt3uWsTL5GJMWcJmZb0tPHU7O19CeqjDEXEz78GGkFyRi9HormpZyLum21u9FNU
	 8DuOglmu0IoRTK6pua15eYVt5E7R+nlmocHd3buHiFoRzUwDr7otb+C1V4tpc9Tbx1
	 qMPksBzl9JkerKG9GAFfXA66rNW9Fkop3mvIK8yn2vl4O2EjFmZzjx11gGWWHVjJsH
	 zICV0pCMWtS0eF2/0oY5RgGizBv7jxTQHvaXKER6DsXMEFNyGZGVcSV+TBpPYPm6iS
	 Zk2kfS0JFrLSC+tYrCzKzPODepQoOltG99uJSW0LbzE7uy23eFmQg3IzWnXSwFf72v
	 V6CnrxnUo/C5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564FEC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650725332.3767.14143109570833058583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b30ca0f4a402b8ccd8a03878e25a77b249c65b6bf61d7ea518d3d727fdd85b6
Date: Sun, 23 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666507253
