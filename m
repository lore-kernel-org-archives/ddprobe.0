Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADED8136A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1616FC433D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686686829;
	bh=E2eD5ixTh8ok8KiIMvWmOfv7TwsUUC5XR0JmVQOimKY=;
	h=To:Subject:From:Date:From;
	b=cEifRlCBGV5hW1HwQXtB6P+FXa3jioi+pVGnZpB1xaQoPwhF/awyrOFrvSs0BPXK9
	 Sd0Z13UytzeGJTN4osUFAZS73EkishSJcCk8FFQtcqbOMA7+sZBijzpBHWYH0l6m+y
	 t2hrOz8weDw+GUFnjqbRtpDvJrzutBghHG+2UIsnq1uMXi+PelOB8SSisPGY++cgD8
	 cXpPWBwYzO4qmlYNQ7ao35U7/nu4cOj/DvkbpPclluJp+f8tIl1FkSqu7IUR4g4SPg
	 X5Wk9i+zdW3QsygVGpIWhqaYTVfd0FnvKFH1xyAMd+gEuswR8XsBo4dhgUVKwjByfo
	 gT92Rg6UXTKmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE8E7EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 20:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168668682891.11640.3281483267737361124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e123f9ae44aaf32a7f82d2bf90401f256b2681b74b6335bd5c6580bb390cb2cd
Date: Tue, 13 Jun 2023 20:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686686828
