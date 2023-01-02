Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51611362
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EE3CC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672628487;
	bh=2wAXk8M8yfmFwW4KYnpK2BHW7XfFEIa0Orwz0nP0n4U=;
	h=To:Subject:From:Date:From;
	b=AaUUHxnEy/QGzSECaHCQIJlWqIKZxG6XyJd0FHcVOoIoeb0Al/IyJADxwb83uwcuh
	 zu7VhrcI3xBWa7GnyOoXwFO3HC6sLSDanqQf3w4jnAYAYnKipqTL3m26E+Tx2KeJF7
	 SGh/FROCQZurww/tmkCRqIx+61PiXTKEP/rfkVqg/5+Zk7qAm0BgP15yheycrTpQCh
	 CYn/ImkUKYONWzafLMmkSWcmzGKBPb7HBs24ID3hJHkQnU2ouZCOuCeRPSos45Pb+l
	 8hEk5RuoRTZ26X+JbeFm3T6ra7NLtTnGnmZyVRTv4+n9oGfP1nu+xH8iYWbThSdao4
	 87M+TwTaOKiGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A16C4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262848742.4054.4892602017902885699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbdeb6428d76b77921fc416784b1e02c1f83cdd1e4141c5b13b095d2a9dd1c63
Date: Mon, 02 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672628487
