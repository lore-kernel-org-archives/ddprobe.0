Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680894B048E
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786063834; cv=none; b=A6xY+klDQ61kInzx/FPAlIBe9+WsxIaiI4EF9ZSjDk5MmgeO5511TjkbVClTNw1eKuYvH0yNpd/LUXiNzp14uHaE5S5WQTGXWQ+Vuk1EgO7xWYmN1MmTA3hV9NWJMdeDySxSqmyWo3X9ZGxiyBpWFl1XNeF3UKR2Ow6Z2oeOAiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786063834; c=relaxed/simple;
	bh=u5+XBX976NgLrGj1+72M0Lxd3OQ7O+GmR2N4HBOzMaU=;
	h=To:Subject:From:Message-Id:Date; b=JMG4oGBVQ4lIBRkWoAZgVUkx7m1uptWZrlxquIYbdfGgAq16lK8ATXXGYHU1b1Fd6txWyK5hJYiYCq/M1ZgAhE+JzBsgGAnEy7OVAMad6jW9KYeRv9zjFGNSUh+pR05xa11sEmUIGYv0J+s2ihpmZiF1Wx5WznmgT3wQCJ119VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ged8vkrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ged8vkrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5075C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786063833;
	bh=u5+XBX976NgLrGj1+72M0Lxd3OQ7O+GmR2N4HBOzMaU=;
	h=To:Subject:From:Date:From;
	b=Ged8vkrLWiGEB0jl8GjZt2Qbz/0vzB2Iox/pc9paIEk5Rt73N78tvhlTJSYj4SbHi
	 fAn5/yO3hQUNK/026qK2KwsNBkY5iSZhsgAWABNb5YgFAWxPeGa9GGCcJrc9FIuyqA
	 LNQw3Z8Po+UK8MHtJpfQUyj/TmQQHqX783Fn/ExS5ByvABI55x+NfRir4faRM2VuB/
	 m25IPpYFxRTPYrnI82bbuFqPoc7XtmWy40HhuS0PbPIoW61WNVrecSOMcDmhK6GZFJ
	 1SsVCVjXjO589x3fXeBwGLskoIQG7HD60sNUOudc/A1YNGhGqzN//iPlObrZhET94S
	 s90e7s0Ke6HyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BEBC5AC67
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606383369.26913.9072203644276068246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269325aa7d8f81682af1e0bd9ae0effb3d57b3fa776dd0c09848eff3fddcacb0
Date: Fri, 07 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786063833
