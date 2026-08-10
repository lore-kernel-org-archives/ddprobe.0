Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E72C39CCE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786366234; cv=none; b=NBnb2KKmHpwKk9oova7VvD9mBh7/wQYlTqR/MswLiLZIv5IoLHJ/NiJqhk4JWhJYM96aONx12q6U1ahirWALLDuMKBz+KkSpF4l+a6gQSiZRKfYvnxnpvK99VujrNuz/1StozQFl1x76lCp/PjiWgJ1dP6QFIgOZlso7uAGC1Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786366234; c=relaxed/simple;
	bh=SOXVaE5yeWAnlxddbJt1IoeeDjC2P2e3FZmpwfXFp5M=;
	h=To:Subject:From:Message-Id:Date; b=JLY+bLWdiahMvHsWXv+k41Zz8+1sjOCNcWwhc6g7Y4Yz4Op51sN4QOY57ODjs7vl1TwIEUMwIRR2h+cv+D/K0Q+ImH0gdXfh5o2VUjpWVTM2wpCsc0d0n/NKFT/YS13xWogTegVtzih25lLdsYNfTCeOsafRTzy8wQdXSC83TE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOfLYgHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOfLYgHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5087C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786366233;
	bh=SOXVaE5yeWAnlxddbJt1IoeeDjC2P2e3FZmpwfXFp5M=;
	h=To:Subject:From:Date:From;
	b=vOfLYgHmHfNE9PBJcPb0/e6mRJ6/L9+oVK8FZeZ1NhNFPnJqegicBSwFb9aUN5gg4
	 HAlIa/y1ZbYL+byNdU95+rBOW7YSJq89e/rI/WrpFCTQhwchT0ml/eVsIdCE2GnjxR
	 e+nOYlEM4oM87dX1s4bl9ngA8C+eiSRc9vwpvkx41GYN+mzeG9+CV6FU8CedawqKTz
	 fIjfB3CGOpE/+4wI4clDOtWmrTG8YlmpnRPEbmJ3qgXrnjTeefWZCdYqg5uCuJCU0s
	 zcFGMnhmuACtAdJHsaHjVVktX+Jxf97wSgEvnN6F6Lt+jdTbi/hM5hVIreP9064CxC
	 T7ehpkF/UBuGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B222DC5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636623369.4138.11782195700272404902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83362b66bc2d7647e50219c65dff2c76854fdb00e83d3365984b26df83730b3
Date: Mon, 10 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786366233
