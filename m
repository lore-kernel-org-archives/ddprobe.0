Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B063C2D
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785706234; cv=none; b=iHVq+5sKO5HpV6GH4kPW3vNoGWcsG08Js+wVtvyCzLD+iBiXZCkZ1/oO50r404jzwq1G28j7p1AzUOHSHKiRvOs8pWwOAi3Ui0CHPPFKf6kW9uxG3miCdgRDaUe3Gn2LYZKfirBoK927t6AOf4IFnyqSkgyc6j9AUIqVzTLwmrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785706234; c=relaxed/simple;
	bh=3AD3GY7LcM6lKaxHKokc1I7moBDK2EQeR65JvjvQ3tM=;
	h=To:Subject:From:Message-Id:Date; b=cvKuZESG4lQsXR8n6bQjRlM+LyHxcky/cfh0q6u+Hpri6EWbKBN1bq/Jl90iL4uSjeV4c+X4gnyh0KQ/o9DEwxR16MyMYORiPtskLa7myuJQx0zzJn/8MyIx6YZiCahrmS9ASSZ1q+7GG9f1uH08xmAX+E3eYR3GVDpXMqETUh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhbtp2sU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhbtp2sU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC569C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785706233;
	bh=3AD3GY7LcM6lKaxHKokc1I7moBDK2EQeR65JvjvQ3tM=;
	h=To:Subject:From:Date:From;
	b=mhbtp2sUSNc6GfNbbL3+rLf+Z6NTfVdR2vnZgZfc8pj1qMTWzDbEW9FQzvsEk0ffF
	 xfYSfMRj5GJR5MJAPCpTK46f7LtgOeX3zBTN3qdGO43opIfMb1KePSV9SSyCJjefjt
	 2rZWFwUK7eoOkdJ3aRY4YzO3Gq/f8Ay7kIabxwOqlFWFQXW8fGye3tSylGO43qqUId
	 sozb+OpytGHZUZZZDOtsTgN/Sv/ByiYaEMH2M/OIYQoV0yeYzqVIjamXbuIMDm+hvW
	 HOrUzWhylTUAjQwCGX4OBdVUILm3u1Nyn8Yt4WdNqE7xYiiPcrE+5wx8p3Ts/s8ZRN
	 7+q+xsQr8AUlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AAFC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570623368.17077.8210723144840622128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f481ebfdf81420ed31b37d1bf05e22282424176211a9047cbdc43b05add40e4
Date: Sun, 02 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785706233
