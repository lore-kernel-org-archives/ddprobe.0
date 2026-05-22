Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76BD03D45EA
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779457954; cv=none; b=GEWfkLal7IKa025cNgZxCnkpm2pL0xdnebBxW+GSKEzgk6wQjJFUUDCw08ybyvrge3LbrsN7pk5olCKYYUzGwB52CfZeQLF6aaU8ElWC2lcWGTQ5Z9RpRbisWSG7g1D4RDtqo5n4QASZDEcjl/0+nBv6wExORjSZvBvHRhSLrpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779457954; c=relaxed/simple;
	bh=t1DMKqU8e4yEfV/DNq7mK2vL0guSxEjjd4nTb63EyEo=;
	h=To:Subject:From:Message-Id:Date; b=paT8J/fU14K1jwdxPxEkC0d2QINXL9JUimKdOKnpH6E326NDZlwEIEHklZeeQAeDqoOEOWyN0m3rfr+O0XIVJXKoNk6Q9+YoaJ+UO/QYVE0XRP+a+v8oD156YvMFzFNgAAYSC47iIm1j3mH5G8UkoF56n8//sku8bAScVA8cKIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGzuQkVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGzuQkVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7635C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779457953;
	bh=t1DMKqU8e4yEfV/DNq7mK2vL0guSxEjjd4nTb63EyEo=;
	h=To:Subject:From:Date:From;
	b=SGzuQkVtrKpvGPTjUox3gWBTC6/fp6GesEmcn3ZmCJhvAVbQ9n2PGw1cFogz6FBih
	 hswiqe13jrcjyKWIj7PWUAZqN5FMG99QDLfX0Jvj8umWiw9IMXCll3MLhPeZAPyMCC
	 LWCJACuXobZO87gQjcik3JDHeafW4tvxzhFEG6cWA73FntMw+1Wn1TkLXe/Lm2yboh
	 qWDolTZn6RVdeX7ETkCZ4TuwZE6uMCB3GBFw3nOR98M85zEpt45jCHgP+MIItlmp8L
	 UH3/I3d+BhTMbqBH5Kk8VVbLhQVxelJgXNcAaa0T2rQCGhb6xHpeMCcH0WiPsfpsR+
	 SN4Irn8UuFyJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB07CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945795368.25337.17756594995711789140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0c75ae66bda1c3ea74bbcc8c21bd8184924c701c6366db21dc4991bb6e6b71
Date: Fri, 22 May 2026 13:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779457953
