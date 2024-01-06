Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC1110947
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOU+2fEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807ABC433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704584896;
	bh=9oObG0qx6+E/E2oW8HWZbNJsDGeDnC3R/WEhUAwWYeQ=;
	h=To:Subject:From:Date:From;
	b=IOU+2fEzWeHRyYOmU3uvCqXXps17zOqcP/pItsyjb79MpbCecMAqf9JCwUwdanqhT
	 eTw54FF4mduhZ5jiaU661ujssOB8tY2SlFcm6gkM1tIGS0kOOBmAU/OtZvLinKGNw0
	 dXg7TdASnyR1F8euUCjbedgrulcvi0Ks6CE51goNg3ovK8fiS450nUqwSOm9nGZBPc
	 HFb1jlw+A5fg2MYIM2awXZB5ST5Z4jY1MESBB4GGDcAMs9rUI6d4WigjeWJDJrrMep
	 aaMVsq0msnqwS4eGZrcBJMzpRleR0Br/wFOEEKAz2yY5oYqT0wa883RcsX+tGyrJ96
	 zDw0zY9cOrpAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61361C47074
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170458489638.3020.6537930368417292259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cef32a6d593bb5579d920c528144dc0405045d21157ba40faac5fe5fcc0483c
Date: Sat, 06 Jan 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704584896
