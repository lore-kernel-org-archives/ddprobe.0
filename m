Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A853533C5
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65770C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663236653;
	bh=JUMQxfXrSC9TR2CVH20TALaGjaANvtayuCmXbCddPc4=;
	h=To:Subject:From:Date:From;
	b=YUBSAkcd9qvBr+mGdUU8NopvdBoo37B9qNAwAKKa59B1PrtF4fVLYaemQ9xzCLudY
	 rwrNoBn57OH4HcdPegnT4F4lw9ULCMDgvRc+EDWNmStVWY8RAutf71tDP9lxF+P5+t
	 zdJTZ6Sfa1/NbSfaZHBVcfox0OZY5xSdbF8UELLcKL4FXcPQsgt5GHpCUV1XWnhgGW
	 KZiTgFldfOE2XWTS1trbeo68e8AlYqojf6qbNa2BKzYw+GPlJJa8PAe0EjogKJm1VK
	 amcAbtpPM4j5bGHgO5toumR1I9pR7UDGMOJbGAjtD/l7TR+uPiEF5qmJbsdD7UXNvY
	 A5V1FkifsQWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5134BC6FA86
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166323665332.14743.13685721695364675557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248a455015e733f1766c8bd66f2a3cf8437901e978b9a951101c3a0e80d89938
Date: Thu, 15 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663236653
