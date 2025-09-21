Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1539C2C0299
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758436795; cv=none; b=CY9JLEO8YcP19NNK9hJyfOqoh8N6VLVLI0kAC7ZMc1gmlU7bb6k8dOseJE99xWqfysltL36aIw5mSSB3OqGeg9vIH9t6ydOlFVRFNpAdy2/BbGZIsTgXxH1TFlNYw0TMMJ+Oqs9FiAkik0hUUWLhxJUn9zA0lr4jKWyeK0HD7Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758436795; c=relaxed/simple;
	bh=pZUItnGKJt0vvQjlQ/nRDTVjOKvri7iFvZ6n1G2lIHg=;
	h=To:Subject:From:Message-Id:Date; b=qf+cPfnBJrykT/2QFWk9UKgQg4KCJbhs+KW7CtDPMUVh+NWvPynEJIzAQdgXf6rmRhc0MdpOaDTbMVjTpwZbv5maNntPBmfBbfUE9eWxPRw0doEPogMjufGdxZmDNqn88YRfKBea3FlRZfbx1r+6VVPRK/5OftlrRGLnb0cVGtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3ien9NO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3ien9NO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 969F4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758436793;
	bh=pZUItnGKJt0vvQjlQ/nRDTVjOKvri7iFvZ6n1G2lIHg=;
	h=To:Subject:From:Date:From;
	b=j3ien9NO2VSIv785HvLVHeef2UJvOQnoaX1GyNnhIMQ54Q3jSvpw/NsERSeXrCbz+
	 XY3X7RoG2j99ZpNhgnk5+TM5WrT38RBu3LrdVzfcC8Y6qiw/woS8xWaNABn1Tj2Gk7
	 CwHyyTtb8sjg6E+ps4CkENUgsjMPqotb3Xe/1hngx1EuhQPoinuhc0ecTcCKs7ltSZ
	 0Kqv9Wk0bRl0j/OMApdmTEkcXQELphnqnMT5+nVD2SoXpfjgGGKGRhPdsu6P7gZoZf
	 0bGZkyNb7lV7ohQyzuIpz2nWq986bpCr5j26+R04/eJk5rSkhtQYOM7OC9h2FKXYTa
	 ZjdfCd+5cUvAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57ECAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843679357.6627.3882594841698555149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca7f1769e2033747cb3773b1b2915eccf896220b9d5ac256773c77aedbf746c7
Date: Sun, 21 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758436793
