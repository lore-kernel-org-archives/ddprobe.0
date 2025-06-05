Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE0E28E17
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749164394; cv=none; b=KyxEu1as79KVVVyUnqeBA1gbRa0ZyDAhLo3hoUArtXUxd/6Agda3s4gtcum5Z31v/My/5J3YFjiL/oAbMIgf2wXyMk2QvAQZxdeNumGnkbQHWoil6I6NQwlUYkynVjdI4rOAOqQV8KXKQDUBExjmPihBtqeJT9Q8PNQZRVaOyVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749164394; c=relaxed/simple;
	bh=21KaKMr9giK1ypAJcupeChvWFnbOHPyMdFBN5SWTR7c=;
	h=To:Subject:From:Message-Id:Date; b=R05a+B9u801aRDynKDQ0R0BNRAtW2yjlrqbMssg2Nr+o+TYr0eOiCDR6D2MF3Z0e2ots6Wocy9f2UB260fNquWNXuWJ3qNFJWTMqfcvOIxlS8uBReW55rOmjdI6AdeP7caej7rdKwSBf5AjfORj2w29yDnrHfFfTux8GQKJoRjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xb6QUpC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xb6QUpC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2529C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749164393;
	bh=21KaKMr9giK1ypAJcupeChvWFnbOHPyMdFBN5SWTR7c=;
	h=To:Subject:From:Date:From;
	b=Xb6QUpC5jsMZbojeE/SYc40hfH2IZ4aD+Ha9P+HXPWSsh2B/YJ8bXzxwd2WvO11wL
	 fTpARY0WOZzzBuiaWm21y9j8ONh43B9G8g6ZGAsQbmjEKr4R/oGkgOsnqJF6PSQaVN
	 63p+D8AnCPITlgcwFQxrDMGj36TDIsJKV8PyeoiawEJU+oehM1pD9DGym+/5CKf1G0
	 xnsD2i/ZlpO5m+d8cfLwcG4FCd/ZGKgfVjtvBfvAXjkCvBy4EOYOHOZ+NlEo1Y3ePS
	 sZQyP9DCieiZexSfr9iDNFpr1dalMeJCGGDCQI8oAHiHRy6gub2uBi8UKeEd5lOU8m
	 E9y4OPLZOkBTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA8CC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916439357.10967.1683783819305940537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96411771a0fef6231b376b70b53e802d770800de5428a279af137454246dc3fd
Date: Thu, 05 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749164393
