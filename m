Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424D92DAFCA
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759903794; cv=none; b=BJRNuW7o6n4GLI8vip4iKt2YFMFu+FBRrDZTwyzNLYKO7Gs24TZqq2+tUcNIgzW/4IDTy5nKVMptZRI+VpEDCf0yk2/7vN9FLNkr+PJ7WlIYBZaYgLgDh6k4A1P2YqRo/jHiZ3OHP5Yqdp9+FmjhoM0q8ZUuraQr8SVA/YqRxeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759903794; c=relaxed/simple;
	bh=SZPi/TRUvAW9I+thTfXttCkaITPCyZ41s7xdAuOTF0Q=;
	h=To:Subject:From:Message-Id:Date; b=Ti0TKxyz4lSuWkiuddHVlhkMpKQHK9w3URyzPY/w/Al4LNl5JUuVKPNF+2meVzaDaw1+XRTNd4DssPyoannmT0kroJELgnpld15PhO7kkZk5Ph5S64Uv74C0rUAx5EFzWuU/gvHkt7Hd43gqDWa5z9gZpMWiyxKgZE5WtpdWLJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/pBTEXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/pBTEXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF66C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759903793;
	bh=SZPi/TRUvAW9I+thTfXttCkaITPCyZ41s7xdAuOTF0Q=;
	h=To:Subject:From:Date:From;
	b=p/pBTEXiLPAjDWTcC1RI46LN5cUqhgq7XC1OCvtdFLKxx8uZ8+E6uVWLdX/gWxkdP
	 cGtumM/ijja9Mu2kRZyz5pSxXfwzixn20TtQsq32I04+KDC0UU7ovqNObhhUtJgY67
	 MP5uG1ahB0e7HdD2ARx12MTFL9I06eRh/Y2NyiF2eukV2vU1VYD47rY43wdXbaNsML
	 aO1O4pWw+DC2yve/anjEfOItsp0zIyyrr01ONB9s+AhHCMeCzOOewawqJLRS1dbRuu
	 ZsEFUgW6PPGPza+n/w3zlPlOQQbZbqM6k1dg9psS6qcSK9w+R8M+ah7jKGhdWZpGzj
	 IhSWY0wRNkuHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F81FCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990379357.20270.4639795306431664817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6175761a5ba4b82d352393cc508967c2e2a25627f1553b6f3e10c0fa369796
Date: Wed, 08 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759903793
