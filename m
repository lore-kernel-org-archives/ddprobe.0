Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5393D91
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67CFBC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663965054;
	bh=EUg8uAnAmrm+RPD2kKCUG74pwmB4/TUSuCQhZ0+gC3U=;
	h=To:Subject:From:Date:From;
	b=JiF5XLtcT6F+hY8i1XOynIHHFaiwawemYqY982tvAgrqcc9IfFc77YqFZBVBu68h5
	 7LVVTbpkNq/dse4tk9l/myKhNb99Z6xTkjoEbTy1mqu8gMrImnv30AfISP0dFHncOh
	 tqL3+ERQg53tDW/p3Xo2Bo/Y2j6LPUFZz/JgUMEZtpdGc78B0hb+AXn0rVXMG/UG16
	 gcXgd4tb3ywwq8FIIj8Qa1lZEyKDx7XKtAmTGnIV7vHPE056YIcBnuxBjERMzetuOR
	 O8JXwfc6u6W2cBba2MpGMcJ/PY34bfAUW8PV/6no8nKB8/20+1gWWUIx1e++vIlt8+
	 CqS9AMRf2TJ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50F0BC04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396505332.22694.9344795026776249124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34e10a35bd86f705558d6aed52686d79a2c5c04d71878ba05327810bf64854d
Date: Fri, 23 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663965053
