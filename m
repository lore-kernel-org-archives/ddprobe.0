Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8B6443D
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 16:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB43C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 16:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689094028;
	bh=5HBGaCYbAeB+QfO0mArFkwCfkqJhhdz8nxwUuIZpwsM=;
	h=To:Subject:From:Date:From;
	b=UyEOi603GSTmiisoz/A8Vp/f0JYBOGp0Be1yA20h2/dI/Sm8RTzC3HcgO4GcfJNLJ
	 Y2MZFA6afpZNQDWg4wzupVIdHYukYbrH85XdFpztwl7PpCh+Dls+SC9dJCfhFxFWV9
	 mDcSk2WCgKgRy9Fnx/t7uDGMc7zxP4uBC3o8SDs2nEAmd1hhutue9h80vJ7103KMOW
	 rHqaiN4MWMK3vcUNEcimN23YXWSMRP4RzI38br9CmaAwjtjZ3ygmtj8V6RzNqfea9W
	 kiTHeCMEMsfW1EjSHbhZv65d6Ihvi9K3z7DG0/b/wCVZ55TncM6AVqjOxrml0CH8Bx
	 ZJ/JdbZv4pk2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC44EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 16:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168909402868.29573.6297338481076388957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27648ce1b1cf29944c19402eaa47d8a9e0ffaa846dbae5d7420dfd84ae156b74
Date: Tue, 11 Jul 2023 16:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689094028
