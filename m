Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403491FC5
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 06:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9658C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 06:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683268025;
	bh=oiCH9/2zzTWnR86iNOuIw4JsjT9DSBiX7GvA/M63ux0=;
	h=To:Subject:From:Date:From;
	b=Jz+mIMMW77HNgiHJ8p+hRee9yGIPFskRSBa9LnnveQ038ESjdgBdZg2YeqQPaUBqf
	 OwOu5WgFeQSRhqORHk7DodlUtT6Vi7RlyzOOyrb/+4RgzFRPFsFnqenL3gs2d1eyJc
	 VgsCSehb39anhEGbowQ1/XlmLVdV+qZfd8/4yZuDZjscsq8BBQIlpjjD/Ytm7q0kJJ
	 8sydC2Y2ZNKd8j9Vnyb0yXawGTHgmCcUDSUEiVqdsvbgq0aDtZsElyAOnbUDm2RJWY
	 p5raxuf3U5mwg2Q9n31dd7/aJxppMqbRgx0LOexgYYxerpL3OnAA+1073kSoBz/zV+
	 V3h7le/kjxZfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEAAC77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 06:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168326802582.4455.8786604632498077853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8acf105bea81bdd105bfd0412d9c5ce2a065fb8603be8bae1d957617e41b122c
Date: Fri, 05 May 2023 06:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683268025
