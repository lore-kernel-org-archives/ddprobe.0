Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47559802
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739611134; cv=none; b=CXraGIvWllARV0raTnbhe+93Mo+NxJxPoRvk1bmRzrYzAw93wUKFESYo2DJ9/qSZFFUs6XrG7+NSgUJ5mRLF5V/gcGHOonZSMrpUmrfGpLiOhm3QoXP9O83nlKaYDWU7KCzZJgcv0lYLXw5nEu4lgcWTfbtl6vtYGTNbaDJI/NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739611134; c=relaxed/simple;
	bh=DmyorVLeowydTkbkRCL1IwgmK5HG/rb5GjbxloZnEXg=;
	h=To:Subject:From:Message-Id:Date; b=YlWm/q/djDh0o09Ks9kh4ZGw+JWboUtvVqlSMouMh+InIqjD6lUCc7U6A3JuJe7TjHf5BrauvRINmVFF4nnBMH1v9yDnUDida/CL6G/sODf8OUhhFwpm7StdLAbkf/RUoR9HmRqkoVq9gTO7x5kfg2QUDFd6QYVOAEt3bFiiGAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXIut7JS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXIut7JS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD83FC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739611133;
	bh=DmyorVLeowydTkbkRCL1IwgmK5HG/rb5GjbxloZnEXg=;
	h=To:Subject:From:Date:From;
	b=pXIut7JSh7TEjmOvSXy52oFPqqtY0Bk1UoHj/zu3tSzIEbz0PsJzXB8ipht5SbSj8
	 t6nEAQWjJEG/MHrdVutsmLavQHd/z3N7q62b38uxrRZ0uEWKPO3J4vISNRcTMUIHd7
	 SHtbSs55yAZhrrmVrcv7LYHTfiVltdyL6VnQN5g3HmP3ebvTRfIRx5nKLdl0OUZ8o5
	 IG4Eu5fPQuJvFsY5YwgF6yUhCQr6JYh4JmiUoffMfEeYtSuH4ZEaSk5S/KqszpF/qv
	 3L86H3/hqRuTEdHGhDXmniz3SKuXNkMyMvyKEIFi4PxPj7uM0R5E3hNAcaQpJG/u6j
	 pQy8YNrnBfZ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C2DC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173961113360.29000.6917742776649348525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76fe0a717d0f3905bc4796860f0f69a770378bee400b6f19115b760ca224ffd
Date: Sat, 15 Feb 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739611133
