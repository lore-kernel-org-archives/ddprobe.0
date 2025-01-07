Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F061D90DB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736226953; cv=none; b=dZySiDscqW76Xuy/Bu9acSRy6kh5U+xHYn9L2coAqbuOEbFgjJvnVOWTfkMtFQqg7y4fUGWh9gzk1mgT+dtssJR4xnaBiIory4H7c2mCL2b7jQB4nmBVV7LvHCcuS8tyoL/st4fSiyFpPlTq7kWwu5FYODRzB45Z2PyblRLtvOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736226953; c=relaxed/simple;
	bh=fSv/hOqalxOFNTPnWlDvUX19wglJJPOxn82LA4HmZJI=;
	h=To:Subject:From:Message-Id:Date; b=RI189Acnl/5DQTq26ELofv3/sfqm//JG1jzsrgbEOhZkeqd7QZ4ZIDqvkrESnNJIM9TeiebK2gBjXor7GkYYJ4eiu/9Ykmj8C3t/Dr/3q7JANSSzqYUtvIkMjgpJzFOG11lbC/Miwu4hHgtJedGOkEx4Vq3xruoyw1Lk/Ys2/Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbV6oBe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbV6oBe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C9CC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736226953;
	bh=fSv/hOqalxOFNTPnWlDvUX19wglJJPOxn82LA4HmZJI=;
	h=To:Subject:From:Date:From;
	b=BbV6oBe3vrs4xA8IMVuGjBvpSLAs1RNaUYjRHnpqIbxQgflYkV9d3YIfvVp0j+BGL
	 W4gcwqzkQuE/yyqDIzmCYEF59SgtArUQMhFaNiAXuDaGMcUsEjresGr7wILNkUcdEk
	 ai4TWbBxisiUgJPUCgKe6BIwFvziUgBCRnSC+mzmQiC+ydDG7R9nGiFdMB0XBP+KTb
	 j+wPr+CCXmavMwA9H1HdAJoOHEMlnaVedKf7s8jtumEWg21I2wamrxcc/IzjgK105Y
	 BeJGG7GEZ5lMZ3oSfaCjqjNFFcM8a6aItNDFJKGbjw+ByRdi/kwayPXtDo4QAKgAeq
	 3eqwMMwkDrfNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F3E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173622695359.3974.2826974662153207221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e576f63a1b8f723d0ba375d132ca5b4c09e2e4a0846d90669146c95c93511e
Date: Tue, 07 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736226953
