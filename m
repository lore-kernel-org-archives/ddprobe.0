Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242842F39DE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767652434; cv=none; b=L1raZl8/nsg8MUG1cVhu6Qo/6McXrh+7DcQTEC7CcDzeZ0i0NZWVKh7Eg7AQH4a1PibqY6zlr1bg2CfWnHN/sxqrbYey7MVdFkpokVi8kOyFzKSd9R9uAb5X8F3sHjjr6hxcMZimnVtARY1Up3Yy8kIF1c+uaAexkiZ0fjfPQYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767652434; c=relaxed/simple;
	bh=J5LsdoG4TnajbHosYvyHHJ9re/JkpxtQ9rvUZx+aW2k=;
	h=To:Subject:From:Message-Id:Date; b=OrD46z924+Xm8ZcwB2PlCcdBvDAX9J72Iqqo5GPQ8kMDSz8Pc+FlX6eXjbGKhuBY38E0vcDa/pVy4+q3jUv2oIFdKcE+rDBDh6SBDngu3K1WHS+hr+sPa7eQq48R95+fIIp0nwhKc4NhJpD/aJjIka8sHXpN5IsfnL4LS/U4sdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eeiy83KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eeiy83KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C71FC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767652433;
	bh=J5LsdoG4TnajbHosYvyHHJ9re/JkpxtQ9rvUZx+aW2k=;
	h=To:Subject:From:Date:From;
	b=Eeiy83KIo/3/guFO8U/xdGeSyWJWOQqko9qK6u76TEg695RWd4SeVrkasrqT6ixkN
	 RVXZ33Fl4w6s8qsZTEuRGand6RNV7c33XWw0QHWwy7FwPyXi9qH1mDJlCtYRTcgeGw
	 4J9SIeVSSM063ze4enfS82hMa/QHkG8wHU6M29jcbW+4yttRVamtNzzZSZ8+fi0nrT
	 a4Aows2ctFDbtbNlKdKCNjeegWpvEAMqr7FSqYUh+jf8hDPqU6arwU27hZShKdABDG
	 RWbh9vRp1r7KA6KgV+Crf1IjRlS2NstboY4q7gF1qdc0YqFuPQaveyv/9eLJPChb7G
	 hhl0AWxcAtgTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A9CD041F
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765243357.1476.10437092589468619163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a15c9d290e1175385946bb201dae6c9873ec47e229df794a51451ce6c382a73
Date: Mon, 05 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767652433
