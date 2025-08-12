Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4887F285CBD
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754999394; cv=none; b=W1K2fNweUjmF3VGbp9/sOghbsP0Tv+c1QYjvsmJmIMdJeQM548CXQMnAXvkLpA8KGgfDb/L8hGOm/G4ZH7joMsYEJoftRYcDiwk7R3StYmDn22VguA5KQk/ferUDJE3EMAo2ckRVknG4uLUsk8Iww9LHScQwe9z4rv49bM/Y0bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754999394; c=relaxed/simple;
	bh=tqOYLpuskKwVn03qOLj/wpU+Z+xwcLtAten3cX8HJmQ=;
	h=To:Subject:From:Message-Id:Date; b=Sd4XB0G9C7Xgqd5niBCAgYsxvpW+LoFl45CbDfdGxF68MxRLrBJA1ZwbINK1brvj/mMBOr8Dfd95KBr8dB9Ciu8sRVPqMR1r2XgJAT0ZVg6qC/+FduII+7zKrfn6b/nzTgKlwaM5JPgchzrX7nid3XqPSeW26sgdpFbxwVxAZ6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+gNULo2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+gNULo2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A568EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754999393;
	bh=tqOYLpuskKwVn03qOLj/wpU+Z+xwcLtAten3cX8HJmQ=;
	h=To:Subject:From:Date:From;
	b=A+gNULo2UQ071Oix4fyVBkcs9saVLZdP/UpSXZqzzGv6thaFZ2Ct7ouPf/YfTdqnY
	 9H6bYJB7SlnL1nnZg02Sg41Am5NENc/cajfHX3pS1gxKcuxqK4nT33BPYFkVUgwCcn
	 X2SMtimHHJa9VvbiO34fA10sdfgfU8WXk886iJS1aEQq2IBz96hy/kf3FDMeuEs+cN
	 vR77dRPbeZGAT745s840mVpUTWekNplSyN2P8sGtyHTGw5b775k+HZ2rL267SNgjXU
	 1W2+Dy/mofElzHQUg/JQZltKS1OYpykm+KaCWBKbI+BCO7yY+bWqWa7zDjFlRFaFpO
	 SlLEtdVNS0w1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91900C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499939357.2661.783239303684735940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b7c781f60b17394e8e1c34a418ab8cbfd0607412d99d4a9034f4d0cf070ca0
Date: Tue, 12 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754999393
