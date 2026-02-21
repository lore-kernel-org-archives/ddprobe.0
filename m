Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D7F17C203
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771665894; cv=none; b=p/E8CkJTH24nC0SvK+08PMDm7k7bCOGnFCo6MYiNEtYt6+4neZatNV7uCvhLRdYW269+Ptbv5g/4pUGRHDt51RNWTM1+OmgoGbhHSjEFuMWcDKBHIou4t/s9AYbEGI2NS3tmNUUFpJk48+XHX4yTDoPQPLLvjEfMXBYvvvpQkIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771665894; c=relaxed/simple;
	bh=NuETjWKoWWWS1MpfVA5catkjMbkUq8l6PGWC50wEuso=;
	h=To:Subject:From:Message-Id:Date; b=gs4j0hdgoTzDHyKnT4TZnHRJJYQt5VPu2vToOg7LDJIjSsOFfRVIu+EmO+/6dj2OaCf4jGaioNJek3KHLfopa6Fpnv+4Y1KQpim+DkJ4ABkuY8lIR4saXeN5oUrbCiaAK+YeS+13R6voG1oQf7vHHboct3g+DlkwvtF3XbCL0xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+qDKM8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+qDKM8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87ECC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771665893;
	bh=NuETjWKoWWWS1MpfVA5catkjMbkUq8l6PGWC50wEuso=;
	h=To:Subject:From:Date:From;
	b=m+qDKM8SsikvshW2LjoMjUSeooNAqj1nRyqpO2+MTgAb/cwhEJ+thr8iALvg2E7PI
	 AEpWaHZFZHub3CuT0LBxIVaTH4vihOFqXKjT2Cuht+1YMZvH8oMY8WJU9iGrICi9Lb
	 KXkkxddkweMOKnEeCnilBc07SbD6ddh8/MeG8v0kQBYU5k3bkcPhc5+Hxk2tETeF2U
	 qQJSlLHRgz16P6+j28hFjrYYjm8hjQdNJmmPejXChpOgySE7d4etp+KJj+aULYvgLC
	 L704SrqH00Wnj5BE/9JzHgCuVCrwm+MTKmeHgZtRbHxbGkoM9DbsQeT/bhDrF76FU/
	 hhvn39r9gg2IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96572C61DDD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166589360.16006.17014065922282919669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed7124d90344beae6f970895146258ca8a191bf749e2462aa3249252bdbf93d
Date: Sat, 21 Feb 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771665893
