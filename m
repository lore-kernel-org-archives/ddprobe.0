Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE9FA1864
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C02FC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670056254;
	bh=8R7VPzmC1sdhwPzH8T0ZHbUmlsWVjrKgVKnDuLKrZBI=;
	h=To:Subject:From:Date:From;
	b=haVEJg4hoSSlueimwF1ttXhIFKbeCi1Bwz8apcp4TCRnh0yN9KOoyHfRFbEh5w9u6
	 YtWhC0xMdkGg5uK7LMGwdoOSAA1fMZGdedlN32/476hEwW/pgLx2B2dVDMJctwkecF
	 KKrJl9FxGI6ewuGIxY+pjgYKe42QOwAoEw5q08NAwwnC4/a4DYhH8DJS7X9jFRtcfK
	 ZGWdJc5MLtHl/QoJVTPldbLuz+tU1Q1WKa8/h2xcDkdGhuUPw569lzBOIxZXa7Ldzu
	 Q4MjbeXwOHiS/fw0P4Hy2tJYVHpI9jGHWnDcGdos4DwOKJE2Rr6NwKDeJKWzoqanLl
	 SliNYK/TMTXdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F03AC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005625435.23642.13593528947412440989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c84e54d9c42c0632c26013799990c5e95248cdd0c1f0bad7c704351168d8e55
Date: Sat, 03 Dec 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670056254
