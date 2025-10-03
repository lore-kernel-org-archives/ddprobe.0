Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97ACEAC7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759490993; cv=none; b=cvHlMi7a2pvt/kZl+Fozqv8Sw9QABR+jjZG9JlwcPx/Yk6Zmo2qGfVkSHOh305Yj1tMyDNqNxFyDUQLHQDi4lmu3qs1vYCN9kkEL0RrzTa0/2y99/AyGVhdRpQ+E/yoysfK0QCciJWCblplDLa8Lgnel+nr7isKUtbzhnduOXg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759490993; c=relaxed/simple;
	bh=cN+TSQs/DHVct+e0k3SWxKiB9ATI/p2WdwzGNC1RSTM=;
	h=To:Subject:From:Message-Id:Date; b=AyYfhLFppbUiNaRtSVPYjadB/gJm4TaJm9dUeBb14CUhVVNxqubvxpjSh/zpboVrAbL4QsZiqdbLsQRbDKdGJ+UpyaEKJq7uT+zvtkMtXmAxykfJtCZsaWj2iKNjwv6bpPuIYgAJycx3ivYtKckD2lGELnxHR78IMtU7UU3qb28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAIlj5xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAIlj5xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB7C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759490993;
	bh=cN+TSQs/DHVct+e0k3SWxKiB9ATI/p2WdwzGNC1RSTM=;
	h=To:Subject:From:Date:From;
	b=VAIlj5xeetsB2ddKv0JgEKMDXkRKfmGqOe/KLGdKXku5Lch08pHH1Zf379Eyo68ph
	 yebMlKslem4C5A+Plg3VaibaAtyI/Dv31CgBUslxhXi1WvBRXQd7N0VYNkORAWXAyq
	 89VKtJWSYIb3L6yamyvk2CjMTRQ0iuKL7a7luX2OjF7EBDskizjm3tWubqHhigMYQd
	 G9pWFgjPgseAIVw2VTMLHA9RlzHiNBN+Ua5RD3WeBaMDwbpCRGMHI41Yy4ZZWbJDWg
	 gcloORlP4/KKbpDfXmxeC9WhR4sehxd78Gl6QEB1oV/GpO6MaNB85qJxqBLCEKdOXr
	 BoxM/rf8XOYog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92809CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949099358.27792.10172020049230036288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d5a66056a631df745e14d88e2eaa2bcb336a1550db100862982d72ce919f939
Date: Fri, 03 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759490993
