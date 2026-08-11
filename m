Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5D2318EC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786475434; cv=none; b=dskecSh/eL/oGGho4LTSM86BmemCqBn8iUYkid5o0tKV47CM+ZlANvE1iwLCKJk/qQFbHVQPqhSUK2y8ur3tyGUCzqbdyjJeYDOkXjQJWgmRU+QK7/xS3VUdhe6gsuJY9E8WVV2J7o07eQmCYhRoSkkE/rtqRtVS1+Igt/KYyx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786475434; c=relaxed/simple;
	bh=KPBdau8CRb/Yj9UkE/0HC84oCpJ5nqtzo9BSCftB6Qc=;
	h=To:Subject:From:Message-Id:Date; b=QHV5IwuIr/H0w5LS2Eu6mxAoL8qSbaepmqV+QOUfCY3VhHdmVo1p6OXDUY2KFEjt8FWfI4nVJ9gLR/jWLCz9GJGVpYQK08vBS9v4G13cu9yVoaaoYxFA8kt3N1BiPFtSiP4hDoQzukVzR63X9V9YF2+Z02AFhpkvC6lUC+qBsr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/865Mzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/865Mzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31CEC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786475433;
	bh=KPBdau8CRb/Yj9UkE/0HC84oCpJ5nqtzo9BSCftB6Qc=;
	h=To:Subject:From:Date:From;
	b=D/865Mzqu7gDWsPNW0osxYb3jJveKk5ns+8e2WBuIMK7WGib3JObH2U++cYok/3BE
	 6ksnvQs3BqaYyhFEsQwqgMzXBFsTs7CfiuTijlmZ3GREDk4JQM11LIJLB1xSr9KJjy
	 MOHe4iOf+QvX8bAqd8mEo+whbqZAad4f11i4PmUkbHq6KSTmgEJdSX2C81RbkAW7oz
	 UiME7KUxkoy3HWbAJi6p1qBvUmqzmX2f3POA7ZZ9bFg2KTWQJk+cUNjf1diy6siDeK
	 qsyK773Bf+O9u7cKsJmR4eZFf7L2SE+7HJZa5F8E+eU021VdWshowon8NFWGrvBJUz
	 lVwOJHxE069ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4D8C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647543368.32019.4440264746940201308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd246e53ddc03e349b640da64bb807ebfe50564761dd220aadd25daac3d3132b
Date: Tue, 11 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786475433
