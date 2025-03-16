Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8A013A88A
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742126394; cv=none; b=S0vA81ZYTn8ryxMKtui+ed0SM6lkxzRlo6/VttZyYCTnjc3XzEZtcH3Bk89i+5n0G55MO4vwbksPiBhFGHU+OSPVSK0mPyEfp6kMjfRnip4+LgwqJEqItvQFbOTn+MX1SZPGfI1mhIR0iDkf6aeOUr6IkCBr4YD5YMCzoEIsck0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742126394; c=relaxed/simple;
	bh=PIHaNYIkxvCXH5E3+panGnlo6P1oYX8cpL3Jkua2YbE=;
	h=To:Subject:From:Message-Id:Date; b=rB3QQi+YtECrVR6rQo7Hsj30lwZEOvf/xwxOgP/WmBot6TzeftTKvq9RmhwMyme1nVJDOZ9Hwkpot90rnfHAdKROw3USeIzLnfOS1+B/UXd1qNz8foOn40Gaj8KRCLj7JKsDQKD2kuO2b7A56vCHf3g+LvDxBLzpjVw6R7VPb+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8VRlTLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8VRlTLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6BDC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742126393;
	bh=PIHaNYIkxvCXH5E3+panGnlo6P1oYX8cpL3Jkua2YbE=;
	h=To:Subject:From:Date:From;
	b=Y8VRlTLzRJRuK6Fh3cfEDLWdbm2uuZAxxoBypsXeq8FZwjkOdK+0FXC/s8lBZYkH7
	 +xFOaauOl2s6wOduHoUHKl8Vwc37ANXWFHY/hqWkvF8J9k11o4nZ5Z64jxpHxiF5e8
	 fOFPVQRchbPFKWJaC6d0P00RJTm/7uRO70vZuJwI7m1rbMMEjn/HJOtQlGtq77MyYA
	 MXqRRG2HmfhEaV7rigntmz4fN9zI4MAyI3eblpA7G4goSrN5tM4MUb4O722QYm8oVC
	 sucLtW30GR5xikb0MbMMvpE7ePAR2W4ebGXctyWgx/PNYVU4JtnArc7u2kF+zASsGu
	 9G8mscLp+7szQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D02C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174212639358.31456.1920982763551445683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 638c6693c06a6d9ffe392e1cbc7648ccf3e744935009552329e11da472f57678
Date: Sun, 16 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742126393
