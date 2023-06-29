Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5386EFBF1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 22:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51D2C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688076788;
	bh=WpZClEAO0XvOFseAE0vSramTTuaaRGLVf9qmZMZyRN4=;
	h=To:Subject:From:Date:From;
	b=IWhh+wi+rjQysUReO6C1XNrHqmCmE/3spcfv+rONc5F/w1dTXnSz7PqSCHWNH6per
	 ugCUNYHURHARrZhFJOXwBynHKVf3pwy7WECEbJAUY0z9Xb/E4yAMOVn3jadHh/UfI9
	 AxFgXwCaLS7ntHWy4ubtlVCPuUdqvp36nbWVGo03Oik+rh6RZ8jwo+0ZwHqO+eknXq
	 li1vW+Sle0zTJ5ztMmn+74Se5CvhKLeCSktFlECSZ+9XbzmnHJ00LCvEv/Fyu3SGrq
	 T5X/OLoWic+vG6z4zsJYnLV3igtBfoBXPvCPrvBSBaqBIChbWDN0Of2Tx44yQfdjnj
	 cQ5qKKbHvLIow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F81EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168807678866.21467.14451798468517150778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709d9621044ad6230cc8ce60fa70ddb786031647b8575776e129c9663cb9495b
Date: Thu, 29 Jun 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688076788
