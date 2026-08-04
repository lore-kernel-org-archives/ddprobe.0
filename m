Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE82440A12
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785837035; cv=none; b=f52l3E3qIYZQdYo8tzsxHHvbZh+P4aQ8Ah4lYUBrdYMzrDWxbkFls/MTIjGRbywmh+y5HLsyEKBdHFuQVJz6OjRgvTHOs7YKCngqRt3bcLGRu8xhW8rVytyFn3zzzEbcmd+u2FiqBEUO0SXhE51hBE+2RAEukDfF+s8GFytJDXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785837035; c=relaxed/simple;
	bh=jiYv5UoD/reDG+MgYcIPmbf9ZAVaOQAsTbPI/by3Y/w=;
	h=To:Subject:From:Message-Id:Date; b=QPXk2Yxf4bgmU4wOQ5wbCvQ5WGEH6eR5radPRMv41opcxpmW3zfCWRbPPL1+Q3JDInHYcvDtFvZDm0dKh0n9ntSSxEuF/g13Ne3xtk8meuRSHutVNqTCcPWnRm4Tgr1qUcTzoCZ7nlT9zi5+rxx1OlfyP8v20/3YdO9I/2s+amA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOgVrkX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOgVrkX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5F7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785837033;
	bh=jiYv5UoD/reDG+MgYcIPmbf9ZAVaOQAsTbPI/by3Y/w=;
	h=To:Subject:From:Date:From;
	b=fOgVrkX/iCuA11rp2TfD9O+Pz0fHWfdUxknK4ACdHmZzPnm6Ok2rBaafOZtoVgtqS
	 hZjKfrTEZNIkmdKLHcQhFsLzBWpv2N64mYVGbapY6CGs8r+XYiXXF5TZ4ehtx2RNHS
	 3CwjmgWcAvg39S/gmm1n1Xuxawa0dj34AyEEWG7bi5AjSsqPl5Qe+sBHE3jdpIxOAV
	 UMx0X95333WM6vlos5HZX/DYr+u2lKUSetWQd27KwyrLcd7SFZVyi3R9IlQAUKc8XQ
	 Rs/KswsL/RGI1hjVtE1sP3nxHh9uVcZ07CDo4nAm73lc5FACfgcluiMKj6sMLYUWbU
	 S0OOUGn4t2ATw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A7AC55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583703369.12991.7289340910421545756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946e791618a08893ea3ba7b00e935ceee7ac5b19d90a351fb179155260938560
Date: Tue, 04 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785837033
