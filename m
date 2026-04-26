Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D2233FE36
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777201054; cv=none; b=nak9/T3nkUg4S6eFSZuWAty8eNFa0T5Toh0VfUiNPgwKvaEyB1YEit2qHe9AvT0ql94PINKEUmmn+hL0OdHH4jiGu7RYLaYDVK47y8J+NotytfyKODnuitBH9LiGgoKvJAm8kOPLdiYAX08VlxC45m3TJWPmmllRwx8t/3HO7oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777201054; c=relaxed/simple;
	bh=xEscxgr2PCNtuZgspstLYG5gSoMzGwBht3T9ZSfqo54=;
	h=To:Subject:From:Message-Id:Date; b=o+bJYDkoS7NiQ/MxqINKRVGVYwpz0E6dEr/RwpNBnPhKy9K+FpWb4XqhfL6pnflomBGBlD2YJBTQM9t4sgx3aajjqcCK9wkGNz1hisrII1AJqY+68Sh7fcd7g1V2rChxQhW/NLeB8ctzj64U5p/f8nlKtr936tYiALRsZ3OzdOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jiu/4BPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jiu/4BPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEC1C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777201053;
	bh=xEscxgr2PCNtuZgspstLYG5gSoMzGwBht3T9ZSfqo54=;
	h=To:Subject:From:Date:From;
	b=Jiu/4BPkKd1rBUe2NrNSUuMP1/zr/HXvppP+ZfIFMWgzgXYkb5Ek4iI1lGtJFhTsf
	 VciKvR+JZIJ0cDqgCvWZxgWYCvWQzfCRNZzlqTlQCJqJHVHTdY6ai3xaqP5NT4WQC6
	 Gq0uSYmQ483nDEa3lo/4pbS0wKLjPbNUQbiVa6EDU/3y8TqIm91LOvu4FlmXrol5oy
	 wiq4KxPrppw1WAfphJ8gJ7UapNS3go2zQ4+D+ScB6CsyfwsvGgKFfnDF8uZKezTZA7
	 GRJxTdL+9yZkIPnknbf2ZCBKoWVFAVgX6RB44Dh0bVONerXgwNqnVa6Mg4XXo21EsF
	 ArHxZuKNEy3+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC03FFF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720105368.19574.4176467084507364719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69725f9580980d81f728a86e261ccbb049282ff987af1e6e05b1a611df95d70f
Date: Sun, 26 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777201053
