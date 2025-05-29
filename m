Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3405D26A097
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748512194; cv=none; b=Q2CAEdTQXpojttgAKIZAq6AkijsZhBnwAZG1aE66A/v9zGudQz/pzYvcC1Ky14WeXYmIJnJhnZzCkx3fzMYZx1d01kDZu/2pakHCaFLDJKkOCLywbeL55llDyYOn5c4Qn02Tn4rmVKQ46mmadC+7hW+SIstsV6Wut/yh3fKwG9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748512194; c=relaxed/simple;
	bh=qqQdoMtydxxDaaUYIUytHlsWB9Bw6TGlNAXsirrVcIA=;
	h=To:Subject:From:Message-Id:Date; b=S5AcuaIX2EcsiJxfWnunp8vpvxP1TOlfCkSNQFKBW4GgWMJwBxfH+QWT6VBqIor9E09vCPY9ACv5tQKoWCjTQQgF5pW9O0W7g+Zx6i0nbtDRPPSc7lozyPqc1g287fc93+/g85GI4Mb3rmFcemP3+dic95YEZV02yBG1/6mNy0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGfBjMh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGfBjMh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E89DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748512193;
	bh=qqQdoMtydxxDaaUYIUytHlsWB9Bw6TGlNAXsirrVcIA=;
	h=To:Subject:From:Date:From;
	b=oGfBjMh12P2UOavSw8wskgPe1viST2khF6cr0s9ZwWV7T4dKH1HVl08GjlBK9UcSn
	 LLjPyb7vdaIDHxSY6edxpMj/xR4YGlo5XvDnBTwXGZh0djQev22pveld/cprbvhRzT
	 Eky6Sb4ErMqWaXekhZEk/h1jEIg9JGhjYXo7+XD7pSoRqy2uAFLz9Nyaq2TWrXw2yD
	 PreEYZpM33gA2mt6abdnnYXE4h5uNnlPhcBuRw6s3kC8CDrvztlJuqIe/Sbh6TlZBq
	 WIe6H3yVEmEoEgtG1GuTn+gF3ZFUbgyzvi4Kn/guL1esy63dWgmFxmSZWKeJug4RAv
	 FkODKxbmnrqDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B5C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851219357.11429.6778688551333901097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6ce0d87207082f9d533f4e80005c56286856db92dfc603ed7f3d5399f61065
Date: Thu, 29 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748512193
