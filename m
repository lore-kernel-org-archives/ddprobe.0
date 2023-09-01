Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7776AAD27
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 15:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A29C433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693581248;
	bh=hwa8gdfRNKfA8+0vkTY5xm4R9yOdsbuErJOA44wS1OY=;
	h=To:Subject:From:Date:From;
	b=VrOEx2zYmEG/2BQ0D4GLiaP1MMk4P1bojH+SRAmO3Fxdq+iBnMV4rL7qUwfginxUW
	 lrAMOO65a6kTMTAgYwXyky1o1FWhVwr7tl55fqlJXDGcgOdSYHs6MIYWFaNzfNJLx/
	 4pnwELfmP9ukioUxOSnhQsaubocMHOrTZxu0P7Dkn+QHGG6jr2obIgaIysEKqAyaER
	 rj1KiXYbEg1hd1/xAtcD0KuXeSNxQVKZCj+q79l1I46j0UXPMHq41QVEWCJW1VlP8S
	 0TqyBGZ/ohOEkOXfoLiBZ64U/A5T95mAHzvD/t3myChbJyDGl8Easg6C9FuXYT7FF4
	 2Rrnt8dtXzZQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A39CA0FE4
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 15:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169358124866.16662.3647816213333274000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e569bff7c7383843ef365252ed3b2faeb95f5dbf187d2fd9e7bc13134e26ca
Date: Fri, 01 Sep 2023 15:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693581248
