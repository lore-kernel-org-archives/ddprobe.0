Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56095E57D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717737443; cv=none; b=ZifkwgO/5Uj9RwrzO4gaORWblQrY2fBQRyWcYceAg/cXTaa5gRKCeiY7afMJkSrQs42aXeLSX3A8r+WVWBHstEAlWzf6udmVGqL+OQ3vrknfA6MWxWzdlC2UMtwOeK+Ww+oZ1CkD4X/NHYLQfBSo+VVBLCGtS4s5BKOEPc3ZF5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717737443; c=relaxed/simple;
	bh=JUgmZ1h27pashSkb3IH4pwYBV3wEj24fQCI//KMYnOI=;
	h=To:Subject:From:Message-Id:Date; b=nzg4nncGq41iRCw1IBqLjH15Qt7QAFoZbLCGPuxQkZkoGY6sAcyw1+dWBwvmS0aZI+ZeDlPBPLByVHByJSdQBiiBfmBkXyffkwR/Ey8/0kTrJiyh0SwnHMxJR/6rzKt3nRsYYzmouJeS+Mh8G2iYBHX2/z0Oj78H+TJfwAON8x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLKbuqy2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLKbuqy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9149C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717737442;
	bh=JUgmZ1h27pashSkb3IH4pwYBV3wEj24fQCI//KMYnOI=;
	h=To:Subject:From:Date:From;
	b=aLKbuqy2vt4RXhcqbr+GkfNuLzQ8UHTQJoXRtow3hSPvNHmCQN2lWU0R5N6rKPUKr
	 desoaBYGY88hgrbr2M1TOwUAMY8z2+FD1WvkwrRw/iX9OoKpxqBpAmaXNUGiYKEJq8
	 6EEBY0YK+L8g+/Kd4iOn6eULGISR0ZruxO5AP+BXOUxSRajYdOuLIWcNfsF3wSJJx6
	 LJFv7bKm1K5wEVWDetJGG0vdufqdTYfPtJGtYtm9ohL3Yk1YVBF8XC44cl/wyitHIh
	 OPP358497ZT4jnkiAfTyC83fh0vJGDTDJciAt73obCK2639NfjMzG2geNf//l8rZcz
	 Td+OTg1bWo3nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1635C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773744282.2344.53315108032628219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63e7516401df8af0f519341c63b8fb8b4386128f87a3de1845a3065a35268479
Date: Fri, 07 Jun 2024 05:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717737442
