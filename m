Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE59E541
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706846897; cv=none; b=oT60CZHyBOIo9U2oWmwHi9dtIPABtX6OuUEMVLUGYu4OlRN5IwMZSO8XFBMDN5b2foWMtUyJJt0LiYWxuEbxTClL1cDWqUPj0C2szCmkMz1K29GmWkzIq5Al0FJZb1s+Gy7qgWv/sPoYKcskc2kJqoYqb6Pq5tTUCbUaUdClAx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706846897; c=relaxed/simple;
	bh=qgk8DPicfzU5kDD1cQQqli9NjNnKzEJb/F+AsRg+/iI=;
	h=To:Subject:From:Message-Id:Date; b=jSKyCEvtb9WJhLgNgvvPbnPzR0tMpLkgvcMN5zndZQDRVeUMKQgFInlf7JTg3wYqFasdkcggix7s7/46IpJYEZ16u/9oMQ42TLPYwWuQg3xEHgR85k0h94Z4EytehPX29aLNEWAy07fJS73u3H4KPVeTcvsuVTDKWZIvL/QrB+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mlvcbyrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mlvcbyrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC2DC433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706846896;
	bh=qgk8DPicfzU5kDD1cQQqli9NjNnKzEJb/F+AsRg+/iI=;
	h=To:Subject:From:Date:From;
	b=MlvcbyrmFkHmvZk21F+LDvHj0rLroAb4wkM3qAJGQskGHY/ADnWJXPiQaAso/WoKp
	 VPPzTOfC9Er1/5ux6lGC1b+yAklcOZgVl2+IRKqODQumnxSCHWN4FR8WkcY1Ta7Vnz
	 UTReczslcQ+22285n7THQfLVzR9BpYZOupnS5jistQkZcIoDRk6jixfMHnm1akUmCW
	 xWGj/YkklnBVanYGnCUAjqQE2d7JCtHMl1KpNV9cqWkjY4co6EaSnLV0XV2Wi82Ofg
	 oz2dNVBCS3Hj+reWMxR2WpALnyaU9FK86rq7RTmimS6irMoZEctP3kgZMZFVAkN52i
	 mILHisA60j9FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A86C47258
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170684689637.11272.5166460027052396031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d235d002563d683e510f43c32668775b82bb246b4306b698bc85866f5eb17d
Date: Fri, 02 Feb 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706846896
