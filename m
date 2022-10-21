Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B8E15A8
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7757AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666362653;
	bh=NGmmPlAwdK/Zw/+24SvmLcEVDn6QAQhsuZAo77tBpWw=;
	h=To:Subject:From:Date:From;
	b=dzQ+iH80b+PWMqjOjj82N5ujmktCXxvKH6lChj6IeRlgjFgnauV3SWP0euKI1xybi
	 cqXhvsgNY2J8lAsGMKtkUUYPn79mx3TEIZdKbUqVJRFuv0HEA1jHOzDPms/tmAPk9G
	 GFonponJNAFGDkJKnmbDD2WYl6o7C6SFOcGRcDSLD05pnYSbjIBasGgSmuR9y2tLLq
	 X7y5GvRsLxiJ5EYqDH9fFDCpZRr1B9PmfLxLf3ugY9NJ8RUIQ6kLcMCjP8fZYqdu4N
	 auScGuOfdCBdKJnMOG2tsf+Hnt2RQ7wUBK6+BFnsu9V8ySohuxz1X6FWFBn6mzQjSp
	 NxlRJZykZ0V7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590B4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636265333.8265.11189282686543699179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919e5dfbb02f756a7d585545110453eb158d961ca12bd559138fd96289a07fcc
Date: Fri, 21 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666362653
