Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C257F
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8045CC433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664078453;
	bh=X2JH1m1CMgwJrQcLHl6nNYtiGf1GZu3g2z5A+68RF94=;
	h=To:Subject:From:Date:From;
	b=ki3+GVDvDaKXwRR0mNCd0rJVPSSetl3XnQd0S6WMKe+vzh87eiSRgSXjrjrBiSokI
	 G9/v07UPKbsZL6M8pGvpsZVKwGqqacIIRUa4QF2nAjkqq1DbtFMyfMR9sGM25zRjIZ
	 A7j13egg6elmWvdna3TSYhbQwngW/VdkVCj+jlj+ViqeGbEky9y9kN1fjdoU4QX+B9
	 ugpcf0eKf9Ev/c35T29A72xE80x2inbZaT8tZ8Y9o78A9sPmkpdJRWOHAgJ/69Ru97
	 7lA4VgXwaTNzsqrJqDmO0xr+CToirB7I0Dj+WCSnI6+thlzSrZBZGeF6fKqidWvo8u
	 tZV0oZEC5BrIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616B0C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166407845336.16580.15380701222292956748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5668501de55eb5f31faa1ef9d60e8a48fb7c59ebb53ee1fcb4836c1ca17aeada
Date: Sun, 25 Sep 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664078453
