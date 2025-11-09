Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A831F0994
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762684794; cv=none; b=e9GWo4zTsZKmKbrsnNcSk4cjdjSfMig3YCcor48BhVZ/cvYkVb2dmcGMrZuBZyI0uYDRYGqL3FoeiCJu0nY9kVRLgPffRLH2tvXniG1mKNhWP+lmmNpbqRuPHiiIOcYeGRgOcgRmGKKZ1mL5ZRGuMJuHGd8Fp1XibHoa8uQyOg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762684794; c=relaxed/simple;
	bh=Lb3AMKUfHoXZslnvTatZzlYnMUlP8GBZG0sO3eFdQZ4=;
	h=To:Subject:From:Message-Id:Date; b=QNUTS4qHh3Prf84LIdVUmTO7lwxC++xXReKT6xZQ8L0kpX9J87bWGIE20e83MM7F2vi1VgE40UTkNEem/xuIt6pm4wbCBBQAlmJjOAxqdd1KE0pr2XKnZsy7vLZrbmJgduiP+izKDOYFKlHQ9K4SKDvZ2FgMdYrlWDDRNZkqlvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nryfEBtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nryfEBtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A056AC4AF09
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762684793;
	bh=Lb3AMKUfHoXZslnvTatZzlYnMUlP8GBZG0sO3eFdQZ4=;
	h=To:Subject:From:Date:From;
	b=nryfEBtIdoNTU0W7sn5W/GW2StM9u3FENJxOtaYCniLhMggQmJOosOzNwe/0++nC7
	 Ogw7tCWdCrPgjl8goZgn0LTfWrbkgvC/kvK+YB2klbbdpv1CWQYRXYplQI9A4Qjci2
	 w/+Ctk+WV0y6FdQgTuM+V6cTg/t6ymLNcY+tIBM5vUExi6ZAYyUfnjDJhQF1FBScSx
	 7iQk8gDRuqDCnduA5Q9OJ8CSU1sAEXHdlsIHfFgfC+YSeGvbLVV9TZAMtKUBuO04Xc
	 hGKS5+gm5qXBRJ8dAwiF7ZYf/+FMhviFz4sIF0A6OCC8oiIDvggTweAtIJqzJ9jiQB
	 6hX7wl3FLTh6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91485CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268479358.27505.13906154750777737201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb68ee50b25a5276445f11221fa909c150dc5263bd59b1f2ad1a515873ed5ec
Date: Sun, 09 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762684793
