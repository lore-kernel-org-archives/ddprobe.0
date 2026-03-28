Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F792433AD
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774726494; cv=none; b=kN5/sDnAdEN34bbJO/0Dsa9RzZP8ZUh+mqB4CvbasUxvBl1I11IDpCF4K5BRPJYf5M+5xl0e8nf9H4I4tHoGJRruPC9nqtfK6VpJ2mpp5AhZkT2Gve9YFTV0SeWy0JL/XlflNl1K4jS0qyDlnf8xOIzFEnaFFMAvaifLBa+rwRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774726494; c=relaxed/simple;
	bh=ZF5yvK5E7FMgBgGB/IViSQQyy21cGmK4SHVcoil6Cq0=;
	h=To:Subject:From:Message-Id:Date; b=LnoA9Hw8XNEdLyBOVtDO3IpeNMlJiX8XOp7Z+LaLjGfJDCC82Mipmb3kbgalseUqm32bmMh9bexL59lw1FmnYog+femnirCcykpWA8B/mjLDfzuo5N7ve05cPzxYcQCMO6uAs68Oy31i46opqDqHkZSBSGn5U6F+I5C6R/O0l74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSbNjyTd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSbNjyTd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F57C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774726493;
	bh=ZF5yvK5E7FMgBgGB/IViSQQyy21cGmK4SHVcoil6Cq0=;
	h=To:Subject:From:Date:From;
	b=oSbNjyTdw57OQHdSEPLK34XPeDdGEC7RnwI/oXA1C1d+8C85sCjIkIyEBJEIRWffO
	 ecvhf6XFLUgZWGeA+KQTe5BIk8x/YDwcC6GWOdKBdKtdXpB/Q/aOOIZj79suuyjH1s
	 hLiQWUlcVXeNLSgqq86zS1Q42fdlcnK5EMHJ1Ior2kBllfHCnHne7hhodiG9GN4POI
	 c2xD3kCN4wbQ6RGlwgU8YkrIO8SgbE+QY7zgzG1L7zqlimKAmSo1k1cPUr8kNoXQ/Q
	 SQgAkUMe7zHlvZ7i/3mUBVHorXAlmKFn+mRmkbviq8UPbv8UXmSTaSYBer0jaYxh+x
	 OQzKRYxEswlrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9017810F3DF4
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472649358.24346.6823948831401422010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686d6f44b1e906caf2345039b939570324bf7690a0cdc1e33e02a1ef5231aaa2
Date: Sat, 28 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774726493
