Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570478F54
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732605354; cv=none; b=l6U4/FoJkGIlcXvomHvruV4Tm/Cv8lJVbB5ry3ZNDJruE1+5ImogYiqNuPYbPe/jcxAOeLfjIeWmA5cTKn2aMuE9b+5Fj/aapL04ZM8r5VD18jdpY+zBen+LpnvorCCMU63LqJCyBHXrMpbf15oSreyTQcTfD5S7JPYt9YX8d9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732605354; c=relaxed/simple;
	bh=Xek7EqvWo6y0M9EY6OpbY+Nb7AAUKK9hmFHh+SALlhs=;
	h=To:Subject:From:Message-Id:Date; b=G0HF9v6OHvxOC9/Nbf4vA33y2kfVYSWzQUdYgRTaBnipZ0Wx+4ez/PbsV63pEBM2ChSrESRVtHLOO+HF8UGmFyqRTJL0KrS/w2Fu4IUSZe3BDCzLk1I91EG/cg5HHWjk5TzuVQPP1n2xuZUtTAGNipiaepBEUESABnSCTZcFk8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/kaHGhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/kaHGhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEBDC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732605353;
	bh=Xek7EqvWo6y0M9EY6OpbY+Nb7AAUKK9hmFHh+SALlhs=;
	h=To:Subject:From:Date:From;
	b=s/kaHGhiMmCDHbM0zWbmhe/HK5JMyo+rPdDL9CdkE0QT7Lf6kRjK14WG+Py3OPayu
	 oPjDk+yjDP4rylcWhbFtYaCH3rjlP79SbNOzDHE/2QywIDaSqlQA9wjZ8YHu3EgxtY
	 U4NnOFU3xlKjAqtzubxGcuFD1VSzRWDTWxwqytbtjV2SZ0liY6t9vxBNh6kv2q1jgn
	 Q6ItiombK21XcAPS2BrO8p0/7wmo52m47u4osJsyTR8eVfpFegg6QbI0hBoZREMcfQ
	 DlkBLz1DB7aIhtiSvIGVHCflSJyvr/p4d4C4leY26bDxXHhfc/qT3RsulSxCCqZDHM
	 Hbd1JO6hj/XlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F06BD5A6EA
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173260535361.16706.14247011876846892330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40bc7b10af2f27b1e148be228ed7bd99bc4876b759ef72a78816859f63b51dd
Date: Tue, 26 Nov 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732605353
