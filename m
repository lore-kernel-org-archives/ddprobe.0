Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA471E4BE
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765666374; cv=none; b=ayOfxYUlBTLW5HCneH5d45tgh3yACv3HbSagUhi2kj2eMxdIWgQ4sHHCZ/AG7MXuFdHFZ+wWYVp1S5FHFLNVXSAcvoLH9YcpHDno0lPg3zFeGm7hRZtYMSqkNX4+IStb06gemg1WoXMwXxRjg9cKp8ygTW95O3uAsnipSwNdWTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765666374; c=relaxed/simple;
	bh=JHLIDLcK/+hy9v1vC/J/xdWr5XHSs1YmyiLOZpNEuBM=;
	h=To:Subject:From:Message-Id:Date; b=EVIy5sWWLJ8+Rqcg3BjbiGRxWopDNAUEK6EhnIY0s7ttUMzDNDBWlDUnItEL99YuudFQITxfnermJ73xAnRqy/WO0jYKjt68IoHhe2BaIXHSw3ram8sEmgMebiCVVV9oC9kTPt64P2DIb8GEaCUuRamEGFOAv4BvgeLJ2YHDlXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7YgZCRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7YgZCRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90BEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765666373;
	bh=JHLIDLcK/+hy9v1vC/J/xdWr5XHSs1YmyiLOZpNEuBM=;
	h=To:Subject:From:Date:From;
	b=E7YgZCRlQ22q9zgUp0zbl500wHeSmqh17gMpDc6fNE3W8X89eU0I5ojfZMeE5IEyI
	 SH2OGqTR09L16KIGfSEPqjFixayLTJykzn0iLuaNP9Mo+rmzEdIABXQwHfYGq1bR4V
	 JhD845WmdqtYIv9rzdZaz9RTT1bwPP4QYrV7b2VEv2GTRQ+R3C/RySrXxJeO0WedCb
	 Hd8JerB3QU4eaNupuX8Wsj/4BhlS1DwuQv/L9uXpU+pSvoAUpJXFlezzi1uCsecPxR
	 fAQNEkF7LiJbaIRfWGca7WsE1ZAThRbzA/RYRDHwLtscbAGmY1nU5vtcCVFngTJLV+
	 fBjhLCJzJGrig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EB9D5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566637358.32094.10690885289272661245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63635b715afe61f5e4140f5ea0f26a93dc361fa163741618c77ee34bbca673ff
Date: Sat, 13 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765666373
