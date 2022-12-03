Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C185179D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717CFC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670090454;
	bh=Hno+BZYu6lB46tkIxFiFvMftFUFwCATDCfRDSpYguRk=;
	h=To:Subject:From:Date:From;
	b=XhGVxsnMWLsjN72IjGb4Rxzn5EO36y6gF5jwcxDWuT3Qs+U5tM8kzayL+UPazlT+n
	 uWNG7tCTjFRMnSDaA5AejAFVag8rlHkjcWhTd9zFRanOhhw2fLhUz+bdFJCGg60FhY
	 2fxvuW++TpoC2SMcMFINvAOtjw4d88h2Ro+uCl0hmSqqEffBKtgogc0xFBrH+hQ0Od
	 i8wyJ7ER8SIZwTJivHILk031gCvyYNLsG5tq281DM4mk4V/Gu5gWDOkQ9qZEkr1pww
	 brbvX6dfm1jqz2kr+ScO140pv2v77ZOQ9HaBMdMMDgbmZLLVwY9NZfTq2OygfPgBeY
	 JNI9ZMP9ti0nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5522CC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167009045433.19295.6895595841281414634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afbcbf008b9ffc27062c4487cf2b22cfd30e271cb6d03025966b953243114e7a
Date: Sat, 03 Dec 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670090454
