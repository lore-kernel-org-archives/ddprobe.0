Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5E34E1BE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714252943; cv=none; b=IWuXyYe7OFwJ7xlXk4HWwEk/EWtjR2NzVEiYBCkPuMuZRuaVdqVypSwSspQABRFgCQzPxH11TAYS1mZe0wZHb65QQQX1MQQu5zyBrrYFfs2N82kwfBSD2oHeedwTm86pYOnWjZNOCjVd8VPo+d3/YvXFHBeEcy8X8RY5OuBTL1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714252943; c=relaxed/simple;
	bh=B4cOFsS0FO+u+0WzC/VIVNna48XTBs/IHWAyrtqWZNo=;
	h=To:Subject:From:Message-Id:Date; b=F1gCA/rk3+2OQn5Eb8K2PNIZO53BjYxB+i7y3iUlpPKfb3/xYTLcO1W3zm16PApVrUbviMWSSa86Kj7rYCNQGLVw7dsEZ0+lJ2l6OCp6yPEuZLASQ/YlGjBZbn48k8yIReT9z57PdzKmuHx4kuDoNx6vdNZeLz5L8LanWuTMO2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjychJQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjychJQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D257EC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714252942;
	bh=B4cOFsS0FO+u+0WzC/VIVNna48XTBs/IHWAyrtqWZNo=;
	h=To:Subject:From:Date:From;
	b=KjychJQ6Cif7zk6Omx4XXjr1k8ah9Z290R4sAOzIdo0AU9bWvSt/Lz3/1KZIA17mf
	 /hZaJLtk8RPsD2m1qMZ83C1R+IHwub9RH5gB8F0mblraxiHmvO6Cr0cRW+Y6WGGPgW
	 5Jr9rfQbs5dl6DyMciH8TfEMT7mNX+Uvoo6M/zPLME+l7pgNxwtcZVmVIjzu52zB8D
	 RSF+bQBbupdiKkS5T1yrEBV/WIHNw7r2D8mFBa87I/U8unouK5G2OfxZb15m/BFdBh
	 m/RaAWqTvOMwD8BfVbmfMaozsbP/d6VoWGoQC7ybN34pf6gG2a1gFf0aYgXIL7zO8n
	 iqZFLxMwxh9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DC3C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425294277.8217.14781126800328527427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4e1316cbc53d19120540c88cf249e286572f92d809c8c96cf62e93aff3553a
Date: Sat, 27 Apr 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714252942
