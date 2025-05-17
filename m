Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495E71E4AE
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747490394; cv=none; b=it+hAJhyXI6PacSrKbMbRgxaI4GjDbNCc0VnGdo27rW2YFM4g7GDBS5FZO/ulHvpB0GkvWTxXqaUC6TfAYWCkgd+oktWqIfbAcpPzAX/CeEcKRV29+l7ayWL4DkGVTeT0n6Hz6q7MvF6pbFu4gPP5LBgAFoUcS5I/e97sPJ25PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747490394; c=relaxed/simple;
	bh=PGuJVUXy5fgywFNW+uKWhlOUi24KfBPezC+is+gTK/s=;
	h=To:Subject:From:Message-Id:Date; b=Azzpl56E/Cg3cQ0JAIyfFuXTuJO+9XqzGIAGJXhX6FZtpT27CHkG3GQRi7tZrHPyIeTUEtdO8Rv7HVQGVUdFbfxZVii+bjiJFCUeEYU5nYdYc1XmHKs6T8rgotvRkvgMLiUWSzDdcdcJhqus0Ug0UHxHhySQnbSSMILD7+KTHZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9nqiRP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9nqiRP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5628C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747490393;
	bh=PGuJVUXy5fgywFNW+uKWhlOUi24KfBPezC+is+gTK/s=;
	h=To:Subject:From:Date:From;
	b=j9nqiRP7Dq1tRIGDvugZMVfjTftTSJYep+hGXOXc4+oYDBCGPfi113Hi3W56M8IdD
	 CPsDyW7TCNRqdcgFQaf4tqienRQyFhYXM/dlgrOr1dTl+ovYnxoYwj/8QAhYgMnd7K
	 zY+AYZm219QZJiBJs7eOGPdAN/bZgY1gnO9G0ZRawh43XWF9mEXtjVYqK8q1+SVabY
	 DP/1SRR8lvGsr6VKdc6kC0+4SVNlzlvqWhxFLkvTYYeZxh4F1t/w4bqJ3sdT3Yl5Fi
	 A7gIYufYjqOFuZes+4JppK9mmJ2+j7ZX/aHzVWWtNtmXY3dJJ02SfoXXNGDs58VjfJ
	 kVRmGRWwN61LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E955C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749039357.22064.16696952644595736722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b23e2fcf4e30822a17df5d53d013aa4e3207c8819695984988534b15ff2a26c
Date: Sat, 17 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747490393
