Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4B515A8
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF7FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671680487;
	bh=eSN7B9+UTeruj3HbkfHSnYVQpcFAUwXffWxRin4t+xE=;
	h=To:Subject:From:Date:From;
	b=jOOzSgQnNoC12hnK5J3iRoUjx+b+gS4lLYrbvCCLKpmtsmmOqFw0rsFQMbOjtkFrU
	 DIs5DU47qITwjnP86aw9GsOdMjG/tam37TfKFkkBk6OfSXz4RtX6TN2LhkGm19l8De
	 Keo66r1dVRsbVzrh9dpSxN0MMiB8OPJk1VO6QiTZrmRYTyI9WcKTGzxz2lMTe3jHA/
	 gs3AYE1ElMqeHHNHMfKO0CjXa8t9b955F5kWBigPC9sPJTmEgp8itt1BPEg74pbTGe
	 PSSjIsPWuSzHndqzn2ilFBIrgKm2wcuXkkTGvqV51P7UzpU2y8tb8Nu1mRqaSTB4Xw
	 iNhal8pviflcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAA2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168048738.4922.11783869903605283047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97142ecb9a916aa082d5820353f56b3f38f1e06ba3e2fb9795a57fe9bef17377
Date: Thu, 22 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671680487
