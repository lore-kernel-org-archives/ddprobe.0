Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AF822FE0A
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775130934; cv=none; b=k6ncMfnu3anMNQb7yCYNWJZbpn/fR5l0gDlx4q6OFIH0G0uJDqgwccrC567FsIZvZEPqQBe2OjZsuzlwDVmosZw4B2OJ5EjH+rSOAt3aflYQ3UGsc5Ui/h8bf+bMKHiCm6fcrgDEg/TzXi4IKv5H1GlTwrD3y7QL2bDGDUj5pJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775130934; c=relaxed/simple;
	bh=QOtPUm3qOsV3m1wLXNLwvIXv43JvwXbO8rR8KmWOf2M=;
	h=To:Subject:From:Message-Id:Date; b=kV+AcXozoqdaXIpgbyH5Chsnv9CPP4vTdUwu0AYokriMxCl5d2GRnEPTr02fAkC1uELrNQmW27HezGbdBXw9uZT7qnG7ssm1yqwy4/WvOr//n8hplQ3cSmk1sQXD4oa3g6RTLEdogWApGVPR5Ju3kmdD4y1Ykg7A1fTC3w2sbTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYCAAxfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYCAAxfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6E7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775130933;
	bh=QOtPUm3qOsV3m1wLXNLwvIXv43JvwXbO8rR8KmWOf2M=;
	h=To:Subject:From:Date:From;
	b=uYCAAxfSZUNwTKln9E83QeauGBCnnIqI1PWgD2S+OtfxdyrcXkxF5Xo4RL384ds0d
	 avmIMLOdLMNjVHFaaZJjh9ak0JcTb/pPaTikAUjxGOhjAUpA+99TIBmWrloZ7bIppD
	 lRe6qDAzmzGfMdmJG2fko5v7k7dXuYAklm/AzSzJoGrQC6QWOoOxSyKtCn3iChXN+c
	 D2DEwIBxP5LS3D3wVEGq66KWJZGJBItGA272CqW+5OlcqSJhNiIKIkAbMq0oR6Mvkz
	 GPEgS4hIJYlXVG03czfN5jV+D0iWFqm8sqDtxztMuVY0WAY5Y6SMa2mRIa/ULnmkan
	 fQskZKAcGChyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD60D39410
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 11:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513093369.9896.9234437981816855797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39c90dfc81f5658713fff61676eaace7c7b42895e6707e467d7329034097935
Date: Thu, 02 Apr 2026 11:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775130933
