Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3A37B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 00:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04338C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 00:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682380986;
	bh=TwNU7V01mLr2o74DjmjebfBNFRyyha5s8/blgcN0OWc=;
	h=To:Subject:From:Date:From;
	b=UiJKrSKAUg3yUtWACtOQr5m58HRXHW7qGTGUO/Ujt9RMZag3uJwjZpH2U0bCMDk2b
	 U3n2ULP3T4uxu+f3FU4VkaSXE+HHJZyqLt4e0/1evHPZFAlcBTBGL4tbTMJVU12FFh
	 WmQnN4x0Bp8KzFuazOQ3OoJlGGYmUwXk3Pgcn+bn4vTWmMm/n2X4FeMSG1P8A8FsZt
	 a7LYx7WMmTQWBL6nzt50/IhI9RXwTS/JLubVYTzcAysSdnu3ZPhZrYatLZl39iBiSa
	 pWMMRksSvCFhYWIw/f6+AdIbTgvrOfYKu4AZBeIsVIAsa3CB/xhskHJxIGT9Z6j2M1
	 uCPYOEwDCuKNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4A0C77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 00:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168238098582.10405.15571280899179442439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322d2348d2dd74ba1c42473f742785b6d065f4df71da0ba639dd030f5b9f9d06
Date: Tue, 25 Apr 2023 00:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682380985
