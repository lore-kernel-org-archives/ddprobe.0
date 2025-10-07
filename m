Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEBC20ED
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759809594; cv=none; b=H0t6dY2ny6E2YMz8rdbCCmS6U7KHc5UX2r63iCFyDPglXFGUlsJSoTU2CoG1ifyHqrELd+52Hri893GHCrZmjKjAVG2vnZvIjkE/DLllFpmKZFDbtOfszzvPZePB4gxvgsvJ/n4FYHr3Cc78P5V1mjOJ3f+683o/n1L9vhdZIDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759809594; c=relaxed/simple;
	bh=NV7/2VJ1pFYrFQUoH1k8LowMK2ZsiJhEL3QeE0wpAKc=;
	h=To:Subject:From:Message-Id:Date; b=NPSN4ebfiueF6pI+ylbJzx8YZs9uHvyNMarA5uRtj4US8xIdbzS++qnhZqyenm3Pxs4ak8rNAxaKwO1btOYiloY0+htyKuBSkJMnHo4h7eSsJLmBc3uhNvXXruS5adCkVbll7QL/g5klr8pr7ne/l3FYOll88oF3RAug1sw80KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSbJUXOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSbJUXOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66ADC4CEFF
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759809593;
	bh=NV7/2VJ1pFYrFQUoH1k8LowMK2ZsiJhEL3QeE0wpAKc=;
	h=To:Subject:From:Date:From;
	b=HSbJUXOuB+EyjCXi2Q7Dr/xtrDedenrA+iqrt7zldLYyU1F66XcJjtcOqAgneCIqy
	 XQb2PijZhzztIC9SIAXMTdUa4RlVuLC5uaMaP1ex26aTKqYUFqzp/GcUiimsZRvVdf
	 f/mVCR9YyD23JvHUAldYlKavKug5ytruna+X5BWgvPtmYIRalSclNhyWiOoTVC3XTU
	 4tj2h4qYILfx+6h3arFF2Sz1WzJk64jsnuKDi59ZKNPzOtQ9yYcYZb3Fq6GPW1Iv1H
	 fTI/oWTiIflP7NNA7XbzAILEv+tU50e8Ypk6ZqnwRRp6vebBXUtR/rWyXW3uIkF3R2
	 4rW7CyCVaBjDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EDCAC5B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175980959358.25966.725163493114249805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1055325184df8eecc7fbbfaf54838c7291506916862dbc3b7049b7284e830e1d
Date: Tue, 07 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759809593
