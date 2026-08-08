Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD761E1A3D
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786231834; cv=none; b=t7bXFRU4k9CwSN+/U7QXm1g54yypFOu3F8jUFM7UpRRlrPf6OgrWknKZLA9julm0jfcDjENWQiVrR0iR94Re913FCC0LDnMtfnXwl/FBoqO62Ed7yXO+SpTfkNbGhLQsOP2mWdgVnSQRhNDL8cU8ykV+nZXxoXfrE/VccA1AbVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786231834; c=relaxed/simple;
	bh=otPKNjQ1wqL31kGPJSHAkXam0zVbqTm1B0T1KEVsODM=;
	h=To:Subject:From:Message-Id:Date; b=dH+vcTNnoz+r61sBJHp5m7Nbw/xyu2w2UAw2htLXNstDAK1V2YeToMAGO1Us52gOKdBssDSaeAZNH/8Qjhoka//OUpebQfk0M2gPd/gRexRA9iUgdc0li082k6fUG9mH2z30vGfFLBOBVcJ0sTOcDjFXeOGQ/ielpv6Fc+MObZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V87n9iJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V87n9iJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD44BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786231833;
	bh=otPKNjQ1wqL31kGPJSHAkXam0zVbqTm1B0T1KEVsODM=;
	h=To:Subject:From:Date:From;
	b=V87n9iJvsAI1w4Q3Lc9Eoh4AbGa3hr/5DAFr0YA2FaseK+/Zxij9xvvI+XTFtu78W
	 UWo6My9G51P2mxH4c2FCmz790HFaIQYw6gUulkKhi0bGhxo7QM+yJkqsDm9Ynz95Tz
	 biROW7WqWHCi2rcGtTVRFuwpN9JXo/n2ExlRZmYe3W/WyLPoNl2/K0xcZV5bwiK0lM
	 QnRM8OUyW2d2hCCSU7F3ub4mrIGuOBsoPnOszXRw+lRLwokRGlnhfNO2OP2hkxU0wp
	 SvQv9vrnkAALl3NTrIibLi1z3qqjPpl7pla2rw9gt3B//ULxsR3mqiUz0T6XMvr4tC
	 EMNy4vFR2jk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEB6C5AD44
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623183369.18998.14604196506614501118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b8c6f617f9a9e10b93999306d21facaff176d2df3bf20f701be4db7507a5f8
Date: Sat, 08 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786231833
