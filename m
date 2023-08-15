Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B25AD2E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 09:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC02C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 09:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692090788;
	bh=Dkp9U4FMGjis1jm3AzD1M93NAtiyPt7k4bO+FF7LJqs=;
	h=To:Subject:From:Date:From;
	b=a18VoCoDJdA0vRjPJYTV2akzGvHSQmFFaVPoy1Zop+DqDy8D/tofMDbWByTXuLdPY
	 J12GDoC6F3ti2an7xbD242e0COM+TKF59KrJ2NhzVpCzao0YqJ3/4Lvf18Y8ca/qDC
	 E6zAjUhthYSzKx4TCEdin3uv0/VC5On2nVQYp3l8VBFvSaqVpUGNlYpkeWhMLCIMwB
	 Wgbk9PFORA2Q3qSVVf7OEyWwVoU0T2tHiVWr6wjVuMCaRAiMEzCSHo5FGri12rXKXW
	 sG+ws0QC0xypNkUP0qbX0vQWYF7h5kMGdvRq2+4om5iXIwb0uXl31wGTS0miMw+nC2
	 n9dBNuXgaDvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B92C0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 09:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169209078867.22984.10458186592080805293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2c931d493c2d2802b2ec31ca76a0d997c7bcc4c33a919382a143c23ff96803
Date: Tue, 15 Aug 2023 09:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692090788
