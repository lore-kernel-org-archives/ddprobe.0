Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE15283686
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769738634; cv=none; b=pUDq1pIW3dd9ZrqZXza+v9FNTX0Xn4wvrJmIvroVhjrA6Rf1En+48nOPujSbfS/GXmAzRFGQMq8I7CWldPABgwtjJYbchb5iuZQCjz8iaSbGSGfBnmbUxLeWc4S8dn3HtQ8kBBwaY2TjolaXDUSnisjp55wcvLScwC8kViw0riw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769738634; c=relaxed/simple;
	bh=Y5LUF16fG9X0Bi9+PE7R+aR1qJ4kA6dtrT4xGteu8Lw=;
	h=To:Subject:From:Message-Id:Date; b=CEZLCUSdpPQ3rQwub37PId9DqVJFXNKXWlw7Z3wzE/rFnsqDHu90Mx1SOJdEIOLTF8s86yvhEodlUyCZ9LNTRP6oj1Ky6ZsUuZZfIXIZzf6184HYr5HTD3fm/oy8Zwhu3VxBTUXCpKmxsF1mBDSA6SBmRNHfBISJlH6n76x8dEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRmGpFMD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRmGpFMD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BAAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769738633;
	bh=Y5LUF16fG9X0Bi9+PE7R+aR1qJ4kA6dtrT4xGteu8Lw=;
	h=To:Subject:From:Date:From;
	b=NRmGpFMDtTU9foHyiiXE1Cec9xMrNjH3HHDTOcxA3CZyuYH4kLcSjc6TPXeBFrJBf
	 WWkEeO/02sfpSSqapjhHmeFtgQmwKse3yASFk2kHx5x/5zwSwLod5G7r1ygVRgAA3E
	 35rVSlZjXkpa8DodcuiLAIo/ZOsYyvFnnZ8F0+/2gsadeHe396GXCUbKV7RrQJTpNg
	 FSkvRvEZzFEpy7Rgfd0He998KUHmqQf2ZwrWpVymwGcNyNn9KaQm/9+SJy4TqbEr+o
	 zrXRcgJvWquOD/Rdded5L0XmsuHyN3yt2n/7KDCXkTUcSpbsAAzHpFU9PXOPyNQ6nU
	 67/r4RAFYIYlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CE8D73EB2
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973863358.29990.3820717619833305442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508b4745fe420524db1ac25eec1248cdd8241bdcb5233cd624231f4646065bc0
Date: Fri, 30 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769738633
