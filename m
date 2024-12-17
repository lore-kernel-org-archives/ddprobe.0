Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAD8158DD1
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734463554; cv=none; b=l7gteEQhZUJq0Bm7yFqYPKr+cQ5aaJJHzSVgAxagO0YlSHtwEQlMVD7yIa+Bs13stwBIoJMjSIepQf0mM1/uD088Y5OP28vmk7vmX0x0NdpJFk5bO9Go8g4h8sty7z8hMnXZT2my/SJZLEMxZliXztu39gEcHodEYLlTV6Xg9Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734463554; c=relaxed/simple;
	bh=ATHRM13eLsNNGUoZ94a+ffJYslhsGYkcCDICi8zw/HE=;
	h=To:Subject:From:Message-Id:Date; b=mDYIPW91IPOIKDdaGqnbYT3tFVnKQPVq9ro+4DPpY6NDKq5TH+49DGzkcww2borj+txw6Dlyi/tZehg4UInmhEA801vdj/ym23A375N029w8KWVdr/WzsQuuYOJM+OUjzP3tLxP33h4Ma8CEGO5o9ogwnXNs2+xVxzfn0eMTKs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufPe9RJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufPe9RJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB18C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734463553;
	bh=ATHRM13eLsNNGUoZ94a+ffJYslhsGYkcCDICi8zw/HE=;
	h=To:Subject:From:Date:From;
	b=ufPe9RJP7SvrGISJ7OoQJCwSnFx/q8P470FZ1aFGNA96s+8OibfC5jNbGUBUjEKp8
	 Yz+KpC9+qoEe4R+MzSKaMH6mv9+oIIvhtSn9EiEH/rpJMmXCB5WITfRdstBEgZmAmH
	 zR4RsQwXcFW1t7GxEnxqPhP6t2YsEcIBJY2kTT1X/04V9Tzls6NFdo6iale33nqtX3
	 cpGY6lJB5zqsDnKGKeJkicXkCN/EKS8N4IJp/GSDaWBhbi4sI6Tam/unPMKbRXjEHi
	 R+Th9362Od4ohi9PmooCyBjFR2TcC7Y+D0ic+Ayg3n+8xl/pqOBBP7s4Kjq/KR+sfl
	 +tXLv6QcBDy4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF4E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173446355358.29028.2200948290565719110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c622a28356f79833da31308df4622f5f31e57171a89f38d3270da27f13819eb2
Date: Tue, 17 Dec 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734463553
