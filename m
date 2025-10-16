Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68B01E1C22
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760628593; cv=none; b=EIP9eG7ISfU24VAtKzLwTPBzFic9o4G3Id58v7vdxXI6KGp/ewwdqoi23a12379JZThu5YaVcdNn1fE8Jkshk+lIxlJy6TnFycIDZrueAaWCfnJf5lmTH5ikDBroHCOPB5uECZeHml+5/wgWEM1O6V91pbmCyJBF9flrhd7USr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760628593; c=relaxed/simple;
	bh=KsWXt+Bwm4JqhL2xmWI8qBBFDSP8ta/AAgIW8m4gYjI=;
	h=To:Subject:From:Message-Id:Date; b=joFN7CwrUm8LqoJsmmnZ6wNSh4Af5rE1IcYFtMxGWrzCVEJm5Q/QQtwmF8gmK21JI6y+0KUkRwFrfpyRZgOq7Ujo8mXb12wc+ZKG3K9QY72+dvkOd5BfgMnm9LZYKoxn0zFSO4NsOzr23DgBXjFqBUpa8Op3tkm4yvucvnz8/Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u38vgWbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u38vgWbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAAEC19422
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760628593;
	bh=KsWXt+Bwm4JqhL2xmWI8qBBFDSP8ta/AAgIW8m4gYjI=;
	h=To:Subject:From:Date:From;
	b=u38vgWbrf+Io+Pdj++hU4MpS66R4hjvh2rRlPSmsf0RPEor4d1NdC0xf/+DCqxZ8d
	 QjBvln4o0bI3vu0Y+MaiiAoIlD2k6fWRDAyLKh5SWWuy9gn002rcFXaK4WbuqxTKj6
	 cMUwK/x+fzsMUTprtUlCJX7VgDcGb//rx+cj+gLZ+CSt8WTcvsVwVifoW6+H3jCGaw
	 Z9noDZ4zguAyBMMVgn1Ng3zJUEEBNoMYjTtD8S/fnO9ng0z340TVNdlXtVEq1QsSsr
	 V77RsQqVnJtZs0sfsT3R1iobPInA9y/luZaDLNsHwjA3mEn3uy4g2YUPxJkJ8wVfRM
	 q5s5majVY0TGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BFACCD1A1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062859358.8510.4954109399211438127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776e49f5cd3bd4f61bb55aceada05fee7281a2d51f67e64204f67248cc276ffa
Date: Thu, 16 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760628593
