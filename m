Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B080CD501
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67A00C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666893654;
	bh=en34FBGKxeb3Mq4cYHmIZhjB7poACV8287Fo0FN9sk4=;
	h=To:Subject:From:Date:From;
	b=CSxF4+AOlgKSv81NAoWdEbXtvSuzjQIAocqOOXbpAFo/wC5Y7JJXPeKiuknUjk50j
	 k4udcAlwLYg4/0EjIkttSYdn91APXxLUOU9U+8q4tIoD7id6DTq8BTOL5YwCKWvT86
	 doIR/NDTOCyLfW79NdyNeWNA7fscgwYCKUBHSFBpgd6hAdzX4L/nT7wAJSGtz+ZMH7
	 Nl3HfJQPt7Pdwl1UtFpmC+SQtryUBrqQFoPB17eRVDYFK23mqyGcuGMlqyDC0bpDYk
	 FMfFInnFJ/c2MdDU5DkvtHd4igvFi6FgPyHYiBfsE7qEsdJyoOeIqNf0zlvBOQ78Hk
	 0iRFzJXgK0Oeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541B7FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689365433.23428.11877560062571485750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e01ccaecf8fab277971d3de2788a215bae0babbfd880de7d2f2318e6766c076
Date: Thu, 27 Oct 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666893654
