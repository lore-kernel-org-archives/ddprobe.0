Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EB5296FA7
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748017794; cv=none; b=Psz8Ch7C+Pfz8miXXOhs5MBQkh1pQvsbUXSWUQQfpEx8bi8wn4kCsELCdJOQ59Ml4h2ZGgDXL+aGnHVX0SwIDdDIJijWqEPKgAFhioCHkC3vURjuVjcvDVY2PYCkrEFASfHW0sXPHtHhWjfQTfq+F7fHsgsCv1fmcUHMHyakAqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748017794; c=relaxed/simple;
	bh=j94xLrsk+mxuOM4lG+maJIVzNzkbJOCAnAg5oXRhEa0=;
	h=To:Subject:From:Message-Id:Date; b=PbyHw6NYzPs0PdOu4p2ER5XK4+1YGololODfsyYv9dVZpMgIuHLHRwjKn54pDU4Gvse2EXiEeVexS5lZ4bxxPn8cFTKivG5AIi7QZ2qeF8jf8JUlIC88/oBv3dF6F98+Uei5podI6UnAiimTz9jepdVq8RBtkEgckj9iairWiQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvkuP07D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvkuP07D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D77C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748017793;
	bh=j94xLrsk+mxuOM4lG+maJIVzNzkbJOCAnAg5oXRhEa0=;
	h=To:Subject:From:Date:From;
	b=YvkuP07D1htjW6LbFg+y2WKzoz1x03v4WM4nszT2OqsOIuHS4v5wsBM6i8jYBjtad
	 fBPvfWeFV8rL4UoFkbCG6GnDFolK3ApQmkTmksonk8XEbV7m79o9OwwOWRLpx2Dw+F
	 3azhrLWztmKCIoqg+4UEWZuriQysuJEBH5XqCJ3yKjl3yrt8je3uv+UdcX0bKVgdmx
	 +QuNWdWsBo6J9ABEePrM+xaCZBAfKj8oR/A/a2w4uuhOyi8y8bOmvByD1Q06T1lpTl
	 ICSVjxG00KDiB3hLMi74hbRS59//W9RbR1ZgdQva7bk37eGX6DEjA0CukXzHZe4z5/
	 O/B1XyPWHYumg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7EC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801779357.20000.15025021630427349533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20ef203e933a1f1efef922c7cd1100f5205509ab82119b55663ce2160ce6816
Date: Fri, 23 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748017793
