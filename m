Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312831FC7CA
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747644594; cv=none; b=LlWNGdm/h/G7GY2gfaGA/WgpZxGqIN5lvwIcdmmH0uPa82XaNlDBgTD7T2PNzLZezHOFjQNFB98oQDN1Z/YMWjv+GeF41YHu3vHpihwO3QMM2zBOu8kQfzTVTUG8Og/sKqYrxdTnixOnKRYLLKP8tm8amEyOd7N9M3kOl9V9Bpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747644594; c=relaxed/simple;
	bh=uVuylNpLaYGYRv5dpHRggHX9EZ+jshxtU7Ylp+sq/wQ=;
	h=To:Subject:From:Message-Id:Date; b=ohV8DrxvZ+sbfZHqzI483lKqfkrhbxxIRNAHNgPsP+y2BqL2EXqC+yA29or61ETtMnqiIBJ3yAvXQS+8cXOIG782dPbseiepKHvNUTG9Mb5avIN78O4oGEIy+Bnoump7XnJdY77I829BYO0SiiGsIi1XvTl0pFankGfIYpEI1Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0/GER1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0/GER1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFA4C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747644593;
	bh=uVuylNpLaYGYRv5dpHRggHX9EZ+jshxtU7Ylp+sq/wQ=;
	h=To:Subject:From:Date:From;
	b=A0/GER1Y2mSzpuN/AwdHktNXg3Udh4RsB3Jw1S4xGB+gdevlRNcCUuUM0ruzqLBQ6
	 sQd0Qa7m9H7EI8nLL946G/VRQGK0j8NBR5/UGt2efdlXyjLdklwnzUGFOoiiWg7sT2
	 HCJka7J5tbYU6OHJzX/hAZniLx9AoEgGFcEPUynld7TQz73XTAkXiIExg+vPZYocF2
	 F3RCX+pyT45mM4vaZrBSc5JklhEMzGqGCTemmQY1jq23o42Rim4lqIqQW33N+s6Suz
	 ixoHa+qpkl2oaPN8E0r0dL8agzukfTgjexHaiMeaKudSTZifarDeAONAsNnx/EIdq/
	 /1ptqsb2OZ/xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCFBC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764459357.29508.16767817991852207477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3886d5a6abb4b727641cf15c88ce4791a8149e9c92174837c29c4b86f78bb280
Date: Mon, 19 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747644593
