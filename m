Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A1D1CF5C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749887394; cv=none; b=KE6L9+1EdO+fMjTYwag7YpOxHxaVgI8s3IeYwyOYLGdDv7vr1C6C74rmIqwPOIjXCHJzf75dO8LYL6ilthK9NTbHZQGZaCo1hxtU5KA1r3TJ8wusHNbXUFMGIR8ZaKJDXqaz06q6L0L6ukP0IsfOaotaETn4DtrQh/kBWL5gwsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749887394; c=relaxed/simple;
	bh=F+Ev/rajn1RhoyAtFnHOfjb5W80InhwYewBOUY3HENY=;
	h=To:Subject:From:Message-Id:Date; b=mD9S99Lw/IQLPy4iOPZN0aCyXtqz4tquX3Gr5a61e7J943LTzz/Czs8m9TYsILUwxH5f2OQ0QkItKQLLe75goqO8ch2sk6p4Psnbpy3SXGRzOZ4Rx3EYKSjROROaW5cjUSfVh6DukyV5eMja/VFqv16NsMk9Qg/gOCUP+B59+b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaOq6+MX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaOq6+MX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA36C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749887393;
	bh=F+Ev/rajn1RhoyAtFnHOfjb5W80InhwYewBOUY3HENY=;
	h=To:Subject:From:Date:From;
	b=MaOq6+MXnlaoQfHfoU/9v3E6gjPyh+gVM9R0PvSANYrluM36NTwqc4Z2oWDMsZBav
	 soEVSi5EenhoYkWrsjYG9h1sz85Hn0oOBadx/dRXhl3Yn+DAh6D+kIF3/v0pM1R5RI
	 sGY2hVKGI7qQE5vfohMOov2kAuLXRW+aJFITJycD9Nz6YQHkAIiJ+J4FlQmjx7ZDWT
	 BLyEU91FkIu2l5KXfFVenn28ty8KbMDX1OO6YlNz/eSmNNOKUGitjaJW/CJnxYwrVW
	 Er6jPclMNBH3nGyqfFZnltQFu2xaEgFtxHZrAiGNcNs9KZT0pjax/mIJgsj0kOjVfp
	 Lo6pqqCPASi+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E064C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174988739357.21589.3321069862969337553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31297a2532f8ccd921456f69b26ffe7e1d10c436a9245cb695a3d231af242172
Date: Sat, 14 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749887393
