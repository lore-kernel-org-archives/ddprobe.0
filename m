Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FE97E
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 16:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC1FBC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 16:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677946026;
	bh=iT24MjdYdJ0x1l7ZGXrUVMC4FTfqT312pVsEtYeqXX4=;
	h=To:Subject:From:Date:From;
	b=NccVG2n127tefMgMq5KvteUhNSJhoh0Q1cB3VzDD5KXzkUb7buBGrX7OgKeaGjVtS
	 Yqy/SxCuq8DcdH6OFdFuPTwzUy9BJhNIXqfC0RjcOrHiOb5BZwqgYg7QZ/BnI0i5XU
	 XZ4miPqw/pkTHw3opqmkKk6dVx2IxzQJZ66r1L9K4k4wET17vdmCozSvBANO489xxV
	 ap7QpKYovbQTqz9HQSuZ/54dyy5Tr8k/wpoeYEQ99YOjoAMawseItwtoDxjbl0A0rf
	 yLvQc9Ds8YhsD2o+H4o0H3ED+2kuEP4cMLUfgk5EgwE5REfFB8dTgQ1/SxRxjjoIET
	 ndnPLSgALLI1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD710C678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 16:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167794602582.28869.17084173798071591420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a750617e31a44e2fbf297e2f94649d692057ee61c50dceb0cf1920d135b51410
Date: Sat, 04 Mar 2023 16:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677946025
