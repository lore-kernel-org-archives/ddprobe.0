Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4C2469D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747540194; cv=none; b=ahy38TKTsxtd5hoBTl5oQX2j8mpeJWC+ORXe8+ub2Y2e9qlxZvo1ffshzWwrA52Y9C65SR8t/gzxaIDyTk/yalZOZRO0gsncjn96VZ0aeY4KFaGvn3pK9EaSpAlEXYx+RaRyTsjdCHBA7HNARNlpwPjYFeg6Bx7IxADDcQoRr9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747540194; c=relaxed/simple;
	bh=T8CH32Km4d0YpkD5u35Cnls7ZGWyAw2YBaA+d6EQH5c=;
	h=To:Subject:From:Message-Id:Date; b=ZKcMGMx8eqYysxAbzqy/9HJMq8aT4JU16fr9/OznrBkEqUPnQr6bdR/045R6PAp9dKxj/fk79CEumXBFkbL5ienREAvbGDlrvrXZVGaeyxIUjn4U30OBM7FaYHb06p6pjdCmHeaVdatMugmJJT64043jR24a23pB3lLkQ0gYs44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hw+QZA/g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hw+QZA/g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B41C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747540193;
	bh=T8CH32Km4d0YpkD5u35Cnls7ZGWyAw2YBaA+d6EQH5c=;
	h=To:Subject:From:Date:From;
	b=Hw+QZA/guR0cl2ib8GlsX93Dk08h4oK7LIiCMB0c0WFQA7dcad03bUEsXcDQ3mspe
	 gRc/AFSsJOcydg9jRSUjkwVB1ZChaWdp+PAo5xn6ux3w+bh6KRPkTNHXTWZ0Cuf0w/
	 f9nboCRs+eNPCcy0bKaOdRfs8BiDOxC5FO6wQf3+B+enzfr943GZbIg+GilFq2FzVL
	 BQjnyPfGAL6G533dX8q/+o8+rLZ9SfPemwUD8UwdSr1TtC+xZ/rNJqjmkPQlyc9erD
	 f9MNGwmWPXQPYi3SK+v78WAf13ecTpPuA0wKj7gattmSisj/UZTA/vWxqF2oi50Got
	 WiWHKQC9hf21Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F491C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754019357.15435.2247020241381720231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b06a77e81bf6f88bda925689160dbb10ebbd192395cf8cc2cc0dd838258ff3
Date: Sun, 18 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747540193
