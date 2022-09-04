Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB3B7E
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A45AC433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662312653;
	bh=3ODg6lpjR1zZXnXVUrhfMPeao1DobKzC8COfrR0m/Dg=;
	h=To:Subject:From:Date:From;
	b=MxvXG30YVLjMmTGcVAP2X+0Er8++fpPaK/T+HJs+5lOZbSBmd6D82HY7et0A9vk3V
	 ozBj6/f74OE14MvfztPRFWdmiW/XNTkaew/i161fStrteWLfaML4F+gv/VY3ghUHmK
	 l6kqVjJ+erWfrMrkH/L8/MaEV+N0lFFFPzguMYRkj5HLBTmvBM3uM/u2l43rKNIVoU
	 ApSeyZuagD8ktelbRzEhj0OiNIpcqUGfXyMMJPKZpbcP78xq44jV9N6sgbjka6rvrl
	 lHMopjrXQBOkXLdjkSuaXJS7T2lTYZ9StwaSsGLZDo7xqVyRegG1CgbKPnhUMAi3Er
	 AFuKnKTYTSCMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CF6ECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166231265331.22019.3370609286549635746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67149bc4f685d94495dbdaea4499aaba817c80d0880cf08170954ba66dd8f508
Date: Sun, 04 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662312653
