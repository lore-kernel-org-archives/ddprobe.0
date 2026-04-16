Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2490939D6F1
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776382054; cv=none; b=YWgC5Ow55XbgzGjRa5TnZ3t4BkoPym87hYuxdgR5Cu8bLpnqXI8g7yIKelFT7eXhUcd3YeHFPhIcFYHIf9vRsELq/7OKV1NnukcbihrCT+WiNueiItg3bIiT54rBxCyETLpXVPrC4vINrfz/BamuGyJdkC9jlq6PkOXKlvUOmf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776382054; c=relaxed/simple;
	bh=8jFlUyH6e30XNaURc4LXnSbGlxjRN34YevZIQZoJPd8=;
	h=To:Subject:From:Message-Id:Date; b=hx1cxVfQa8DMPgCjVqFL2VViCAe+kaxr7+qF59sJ/woQoLwY7cXk2fPsLP6a7TdcGBZ6o6yh+WXjIodCDVsbR0lh00rH9Kal7+TdUtZwk4HgDhUhlLeaVj7ir/k/7I0VcBV3x/c8AOGdzNCUnfR71aW8PJLs9WHbIJUTjQafCVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXvXHP9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXvXHP9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC850C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776382053;
	bh=8jFlUyH6e30XNaURc4LXnSbGlxjRN34YevZIQZoJPd8=;
	h=To:Subject:From:Date:From;
	b=LXvXHP9as4L3SeQwbyKMzRVhBN8NvyF2aUIl0Z99vVA9Do7izPcswHRqaH9zqEXZ3
	 ZnqTI2UmTt8x8w8yIuljwlJX0cpKIkOqQLh6zxhIe1bHik+XViCbIDaIaJsNkkAEUk
	 Mo4InBKCdo/Wsd1a8QM2hG2V5s4WfsY18JJjvTSJBQqG0o+uWwGV+4ZnjUFR9xZwxo
	 dkAWFCwzHVVWT7uNWnV1Jyl+N+ZIuRFsivTlsUWyDUkjApqgMypal2gNbNzVdgdcXR
	 w5YfQhGs8rJm7IhXn+lDKMfLq2zJ5sMgl2Ow/OMUOVRjzMlzDnPie448JBUa2i1uP4
	 82MQ18PKvJhlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9B6F8E48F
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638205369.17086.17115012428453100035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3e41a2abd0a9e5a38b3473c208080ca7026d87523ff5197a830e3ef7bed718
Date: Thu, 16 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776382053
