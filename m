Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFE42D73B8
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775332534; cv=none; b=LQHLDwmpEil3Z9801JM6wRbhN7AJCNRSq473PIBm4eE0RNAG/8Lx6RM+MmY1yd/tI7Iu+Q9ow6NJUpn0wLfX/zMuEJ4tFOAFAKBxb4kaonV5HlWl3P4fPJBEaG0mHuC3bC7fPb+lPSY2pZFVcsUIEvmDEDQ7GDeQs7UtAJewlCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775332534; c=relaxed/simple;
	bh=tLDUxS3clxKM8GTUYDI+24UX1AuKNVSfCFJdTlceaTc=;
	h=To:Subject:From:Message-Id:Date; b=jOfmnelcWA0xeNEflGiFKaCuVAHxi5Ib0Yq8GsA0srvAVdnFdwx2ccHmLYm0uS5HLrECLsK6WN7JrAAn97wX11HYzWisM3GiyFrkBBrP2jJzRcmnHo1U9GjCp+2RQ1516v3oBnm8Hb9XRTh+gpeIHRNgR8w8TEZz9EH5AJ8zDCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOYHm1R6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOYHm1R6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02EAC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775332533;
	bh=tLDUxS3clxKM8GTUYDI+24UX1AuKNVSfCFJdTlceaTc=;
	h=To:Subject:From:Date:From;
	b=SOYHm1R6GpborB9OZKj+HcGBooPifAnsGdO9Wf5vwrCIO/sG4T79nlXR+KD9lIaAh
	 6Y1oEeLnBTZna9+7+A5aGvChlLuu7s/c2abW7ziy6rY9VGPdyJzfFf0HRub1/fRP6u
	 G9TT+XS6uAtCHJeX8nuple6TBDyEvO2gl+Ef1IlyNnxPNXxGMwiP7EyWQmHfKLocD3
	 lqaxY3oe6x/Ub0aJH75ktudUSOznXeU6ZfVAeoy9N7Zd3OVQd3uN2Qa2cMXLmW6qeV
	 V9ljZGPLCekla/YUa50igcG+ibilBq09I7ywzsQus6LaM7GDdpK8RPqDtY3PkYsh0D
	 ggis6kXAtzoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9853E63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 19:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533253371.16573.2808141173339998449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52fb924799124f04f343fc0ab47b92bd5fafb5a70c7e0fac0bc1ca3c6c3f2bd6
Date: Sat, 04 Apr 2026 19:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775332533
