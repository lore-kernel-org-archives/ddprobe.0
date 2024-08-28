Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6B91AD9FC
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724886954; cv=none; b=l06vZmtYNUKwjDkduHL0oV/nOD6TgnYbOI+X1Oydr0ZrLO6qnT14aZ3OXFmRJyCaLka4lTIH3gzpAit5zsR2vCY9Qb5sYp9FeNkYFLIIYVqkJU0kHmD94QU87cql0gVgrSD/HXmwYs7nZNrxQtJk53MMqp2d8URf1+E4mdQQFdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724886954; c=relaxed/simple;
	bh=Wr6zM74Ru1mnM+RjpxnkWBi0vJLt+A2UI/NkVvD6Jww=;
	h=To:Subject:From:Message-Id:Date; b=u36cagOSbaPJ8jbCe0QgLaY00KJ62q6awxf797YBCwn/smcPY31qK+6Ux5rP7HJ3bTd7NAT6S/JuoQtbbR0EAWWJbAUUd/ASdKw1EJ6MPTmcw4hWDP2XGd0vnYwjxH9g8jrcLHZ4EW4oKoaCeJRhAi8qhp/ZgY0D0gNMWCMyg4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fumg8R02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fumg8R02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9956C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724886953;
	bh=Wr6zM74Ru1mnM+RjpxnkWBi0vJLt+A2UI/NkVvD6Jww=;
	h=To:Subject:From:Date:From;
	b=Fumg8R02Ep6LEOy7cjvRpe3scFW5qZUv+MgfN2ReA8nFxqBO6nrCUnqN0+9B3xzgY
	 FJVdMAJ31Mbr42mrikJGew2AZS7anTZ9pimpOYl/cWi2324LbJoKdyNcqpQLkZShPE
	 sY8PMdii+bkA9oP2zxudyon5EXxf4vFiZB4My+iWhRg17qHRHZT3mvnXxUHmSHEWV/
	 2h0lsae+F0aTRL+yAugnqvxgF8ndo/jF7IoHWxitF4JEAnrGu7EHI57yn4LkYvq4K/
	 yYw44imuiXwhghnz22gScxC0GIm4rAc/w5MYol9tAVl/CYuBtZ+G3vw/+ADbawMJUa
	 ZYaEKHo6ov/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913D3C7114C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172488695358.9354.6839595393968231346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e62e1ad4977230b55872121a9ec71447de23c57a12091d7848bea120fc1f2c
Date: Wed, 28 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724886953
