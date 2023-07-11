Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5605837A
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E95C433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689115028;
	bh=zADS91vvEzY8rkQFcK82Zl5xvK5J7zfCZFNcZrhuuII=;
	h=To:Subject:From:Date:From;
	b=u1GxXqFWb0A44xHFWWlvw/b4CRHP53o/5lINHLfM+UGpw5eHJEK5ihgK7jjJFHp0I
	 JaCFFmpyQS1XQk/THAXHOs+Wu2mKMTsbx+qtiV0jsz1hQw3fAHuHLzCWaSd5TwqBSt
	 L8+7sAvr6eWTwpXrJrjJHjkD7zkTtwayjTr3o3jXl9kEV/7DI3ji4AfTT3/3JTHEVi
	 o008wUH076lOEww4fvJIrI+xsa82Y6lEw8AuSx7dHckFIX3A7WKLlMshcNqE8utmoE
	 ctVKISbHdMs7aQyrxHSeyjHqQQWhqnFFDRDKqBAQQEIY4qmbecXS2QNSUE8/DZLu5y
	 /Kzu9Z239zg9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7DEAEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 22:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168911502871.7026.2348950385164773929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e9b946c9af5e7ee25a13557243aedb63d54754109b421363dfb469179e28e4
Date: Tue, 11 Jul 2023 22:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689115028
