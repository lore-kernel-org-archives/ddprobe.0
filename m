Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6147C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FBCC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662612653;
	bh=fZxTdfLi3bd8nty4fNHYpTs4XQIaGlapCoP81RG7X3w=;
	h=To:Subject:From:Date:From;
	b=XiY/CtLw83xpmGevhYMvThSK7tLyo478PHapdIS68bQTbuYVSaSFwFAaNcjLrjaZI
	 OAgSgjz35YeThPC5hDDLb8EGo7wqiaf1oON6v0ixjhhD5N3W4+Uubp+7shaAH52C+y
	 kdoQdmVEv5ZVTBHzP1q5vkNqVMGSM+5XQH3R4bP8BYTTgFtX5b/s600xbTbSEM3iue
	 Gv35rdJQVAZUNgcl/9ClqaMsRTymFbDHA25pKbjT7dH1q+hXxCbOtJIOmBCHdEMggM
	 YSz/fSoE5l5fVPYE4UMV4lt9c0UDPVkyeT/OfaPKEXtpXGK24PtApnMWWyBIykWEb+
	 U6IA5zA5UGiuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625B8ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166261265336.23552.10363662744544534331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6605981442b6eaad11bae729a1976be1e4702b8f308033af88f001295661306a
Date: Thu, 08 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662612653
