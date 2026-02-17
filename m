Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFD43254B9
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771324493; cv=none; b=A39ZI+CM0idjs1tL8AKFQdJd/o0hGNBZX5IYTOIwmeAhM0TWljlDClz4XNjhbCCR/H9znUIcHGcr6y7nR5rjsHlhnwXWtEWV7ILxiHP5DksLop5XqexHx5K05xBmrUDQ2SDl2inLmhZMxhWNT3uTMkbn8V8Ti5VqR6oRHGWZWRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771324493; c=relaxed/simple;
	bh=5I1rLD0BrIsQXIcDcDv1lGiH8DxOIGy0vVhqV/wZQlQ=;
	h=To:Subject:From:Message-Id:Date; b=T7C2kpU0BME3sk17PxVFY/18jIEvpKKh6j/8RBekEjpnoHZhYy4QHHrAqiy42fIAPJoKCccC1vYCxEWnWXJx4mJGjdYottr0tHQbS4iEL9kIdqrBdoEBUD1ymQQEk4ZXHqJ7GAItC37djlvWvONkMeJ6wt+5355con0v5JvoCzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlolHe9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlolHe9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29C9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771324493;
	bh=5I1rLD0BrIsQXIcDcDv1lGiH8DxOIGy0vVhqV/wZQlQ=;
	h=To:Subject:From:Date:From;
	b=NlolHe9kPHiq4KyGjZDYeB19A5FECKPQRw4/BFJHJJF82PUlGLHjHzrkYT1DgXt0p
	 iSGhjhk0pnk8c+bPBVEgAflxPT82Q/h37KQGqIS6aSqFTLue+6BxXQ5/d2cdORd2RQ
	 XSdisWW3Ad7CcRLTrlIW5mBW2yGk3P0ogVc1Gb42a9+/crKgfNiZzHSy8k+RQGWy9x
	 5FlBINSfppZaU+hC/P9sLaHUlXa8iDfUuErE3HK6LHJ71oH6YfcXsyX1jy5ODzHjPl
	 lx/49Cf7ksg4Zb6sVZ9TUl52ZxzWALQpgbVsZTEvy7SAMfWGroxT3IjSJ8xiroGYiC
	 UfumL8+9Mn/IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DFBE68169
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132449359.23186.14426408573872581755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32cbfdd5fc59df843476df6222701f4dbc497416dd8e39f5989772d77848f6e
Date: Tue, 17 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771324493
