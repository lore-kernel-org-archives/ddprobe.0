Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A2555C9ED
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792421434; cv=none; b=Wj+XVI6kN/RhtZD4qvmZHx491GDZXW3/uLElrIGzlcELoI+i5/6GmqmrgKjkVvMdDEqgRWJgH3230FW700KcnM3EsQO6Drevyaktat7+kIAiCXS9Rny0Z8Wy4dVZIOCQzgroDXCiTpnhrzvYbJWhF6nQpewth0NNNPJffqXee5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792421434; c=relaxed/simple;
	bh=ORYNRhOr10w2WI/zcjhfrzojY7TP9efr+3hI4qO47vw=;
	h=To:Subject:From:Message-Id:Date; b=Wxx+Xuby6UTeSXYnAFETtbyGm+yeq0s6p3XGegMGP7QCpQEhYRFBLYhiEF2YWWobL6jXvU8o/6Vg0ETmPd0o7Hf2U3ouGAmy0mnBX3cAOWnzXH/R9d411BJYzsJAfCh5riqCDM0I5F0o/Cx5D9AUOXgnlTC19uxDCKyWB80PM7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWh3XLCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWh3XLCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE4E9C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792421434;
	bh=ORYNRhOr10w2WI/zcjhfrzojY7TP9efr+3hI4qO47vw=;
	h=To:Subject:From:Date:From;
	b=rWh3XLCYxFn0gY0VYschoVXrBB2iyAWf+iSQM2ufeu5SbFm1Yrap1KYJW6LDEO5JB
	 PxF6dZMZnpXZPKTED9eC2bXEQerNw0wOkzwF7OldOL6PfR/1/GF4mJ82il4BWGaVV0
	 GE+wn91yOxZ4GnJ4sqQ/JvEo/QGjZRxofJBAdgocHdRDB8k9KJE9fdU+bdokyfpAEB
	 VeLlrg8nz9073V6ZOP1WCEbR+4LHZHnOMKkg3FjitZ3WViZ45HXv+K70z5x9qEm8BJ
	 E3vNgxrt+k+sNfWD+l3WtSTIYbGY0LUgC+HD2GNpAgo9N5rU/F+NgG396FYF9iFsZb
	 sRg+H8Eh/xUaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D17DCCCF2E6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179242143383.17574.10334052330667334796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be26265e9573150c94d725f4518b574b1ea87fb35155dd92357d7df661af869
Date: Mon, 19 Oct 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792421433
