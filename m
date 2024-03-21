Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157217E761
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711024697; cv=none; b=uci3Zd8Fjy9ZtlGoE/Gk+xcAq+NpihAvlmMIDZMwYwMb/M+4qrBSVLi0gRpv7x2wON5ZdTi/B8vM27fd61hXPVl4FngJ5gZvn4x+yfRUG9o+3UbFgS9OMDD4CIQbG0EdCEp+6EXCrl4pIP3ZWTCZBElr+iZ1iUaXghL8+FVyxjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711024697; c=relaxed/simple;
	bh=KUZp0aysTQXrWwiSoux6R1ZgDm9HTXS/xufevhdASZs=;
	h=To:Subject:From:Message-Id:Date; b=tQzgrOFFgylHOItb+10pafqWRtxfVBnqNNJ7oJjfETlVhhUNuz60A4eCyNELLZcTGyLZiTCNtnzQCw4VZidbnPWUXbXYwHb6VoZktPmHTQDIoQj6ZEIxW6bj64fK34yjUSipEX0KYViJJ+FgCkmaVryrdgaU3M3jnWZSaSHZluU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/qiGbv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/qiGbv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7158FC433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711024696;
	bh=KUZp0aysTQXrWwiSoux6R1ZgDm9HTXS/xufevhdASZs=;
	h=To:Subject:From:Date:From;
	b=o/qiGbv8C9uHDAbpZhiFogLFJMIDCzUmk6nD5m70zR/JBoS3MfCUwfsl85G87TMqv
	 qoU7BulK2pc8NHLwEJvUp1orR7XKrRNF7BKeWPlLzoDWcYq1kA7otJqHiEUJhF450M
	 Z+VWNipFhRlejr7G5hfcD4+krmkC6G0Ejv9BdKeYGzo6qfxY8Ky42ZyvJr4ww4TrEb
	 pE3kSeFhtOFIW3d3wlqFD8kKBWi2DrOdTwWfXjmnvReCYxOARDJaQFpLwJZ6G/yDZx
	 SXGSjmRnmiqEKlMJsrp25pongZ8sUVYj3JFIBB4yxr2ksXDZHSIHtkspbNJWxaGa26
	 1vkj5dtdfqSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C59AC54E58
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171102469637.4971.10611711143939917045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185adbf40fbc92f3dc031e1dfc6980a16505f4983b8f086a97e7be53d2bf6d71
Date: Thu, 21 Mar 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711024696
