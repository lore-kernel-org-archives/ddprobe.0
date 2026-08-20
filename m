Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1F424B28
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787192434; cv=none; b=s2zl915gaZm+jixLpuZkAFARTTwBh+Tid7PqxpW5k3R6Ds2Fr0idCt7O+HxLDHN2vj+TqLaEXT1mMyEqJlmmDB+oHsm6bq8JtnysIrJkjNB7vQ6q9y9EX6YeWM/OYiUiS/lDgVyd5QKos4ITtM4HEigsv0JtCzN2XPl4aEP5tIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787192434; c=relaxed/simple;
	bh=G3fVvIXk9qdOvXKLmUqwHv072BJDhULETHw8KrG+ADc=;
	h=To:Subject:From:Message-Id:Date; b=pdfqqTf9lS0ozZN7A21QRQhIILHNuAIE0Jgx3UhkWy4NCYBBRoodnbXi+Omg/DVCpuCbQUAQd2ubcBnPzbh8cQwnO5FoGNg9PqM5B3QbGb4kw1XCc6osv0dVV5BtM9dkuKQrVRRBpfZOd/FI/WrjElM+1dl+Yt85E4Cg3Ss2QKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9clwq+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9clwq+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00007C19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787192434;
	bh=G3fVvIXk9qdOvXKLmUqwHv072BJDhULETHw8KrG+ADc=;
	h=To:Subject:From:Date:From;
	b=i9clwq+vefX+vwIU441IuKXLAlMwlL7d2drz47Wl5JZivfbROmON85AlS3EBO2LFm
	 7z2l0qgVQFQzKmMKbIgX4RsvJ5/90in4KgC9RsIBOSlLN+ZgKkN8ehPVSq0aiuumVj
	 rwRHaj/ipYBkAAHMM2NaFqucx2RzCQlxgv/OiGgGgWPUz5v/VoO/lZ111wvCSIKBvJ
	 roAQrCDIYw7qy67AsVbwmnn3ZapSnAtMtSXtGp24DxLIFDUjaG400LP0345DVAoNcb
	 QGzzoP5TymnEQodhK12rLu7luw08tNTtxj6vnW2lrWaNlxoCfTu6HgyVDLfkUVUykr
	 Dsr7DjflGgRVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7DE6C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719243376.20651.4106769082625233599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19cf8aa0077fcd0e38b879551b3b46e7fb45529e66c750e5e88d6688d0f6648c
Date: Thu, 20 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787192433
