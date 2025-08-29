Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F8A34AB0A
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756482593; cv=none; b=jw3UTWRQJ0UnaJHhRfuZTQ9RC4r1T69RTD8CNtSX081GmLn/dJLNL6ZzNqJvy1vbHtrbZedCiAQlOgZt1LHV+YBI+Ebj+bA2HAYJrbvxeS6ydih+cMZD37Cd8Ise73+FGxRAQq1xn0zhYREeJv52Iuhh3rOH753HEhgbU6kC8IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756482593; c=relaxed/simple;
	bh=k5NGQEsKWR+ELetjecliOPC9JUEZ5Vg4Hp54vgVDQi0=;
	h=To:Subject:From:Message-Id:Date; b=HNwWvWqPOMB50P5C/egty+HpGKEe24bbBXOaYnHmX1pBEXxkgHZ29slPqw01uSgO7UrE3S8Gvc4yNTdZhMs6CgrJeLrkEuOVhZmPpnJSybpUqMHJ1HfCJSB78qnraYe9T4bKfBDncilmOyHTc4gKimf+F+bc3cW0j6/sooHdYjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZQjW+Lb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZQjW+Lb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4034C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756482593;
	bh=k5NGQEsKWR+ELetjecliOPC9JUEZ5Vg4Hp54vgVDQi0=;
	h=To:Subject:From:Date:From;
	b=YZQjW+Lb6F4Qpq/zif0HLmoqLULNQkvrYI8qY7zP2xRzTm3QzsYXKTwQJc5FC5m+V
	 8zQiHdPr3MO9W+czuQnKPxX/XThTUP5endmbZ4Z4Z8vmWU95YEy9q0fTR6Pq1Xa8NT
	 AGINpgsF4DpOnSrs8FwKd8Xx5eTd6CyICIs24qV7PPVsShGtbQkjg+YlPT9hU52Og7
	 BYNlNIiV0sarsJMkmJz+/yZSqCkwdUfJJgqm8Y0fC3TVI2GO9iPtGhQEAugrUFYfwh
	 kx/mUHfKIb8nn1kDBQmQQetxFLOASj6HUvshIZ98BMB+Xc6QXZB1T7qraPkJKTNnih
	 /QdKSBNm37HJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379ACA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648259358.30452.9518067239992403892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17dabb9314a9dcc234f098fd3827e941437f01c402a0df8c618d9c3a098fd6be
Date: Fri, 29 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756482593
