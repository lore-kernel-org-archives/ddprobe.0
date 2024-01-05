Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105212D7A6
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKeZQtAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8530FC433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704454096;
	bh=YKltjzuI1Ko+0sCPnBQU0LIyQJBYhiwg28Cb0qTJI9c=;
	h=To:Subject:From:Date:From;
	b=nKeZQtAdmW+VWCbzDZO7eXDwZKzwWpVflMBUSAOvTxrmH1rQsSJ87VGh45zHoXERR
	 2d51KfcJP0N67TEXe2O0gFueRd8UHqOGifXpAdtUbuMR6oOeCQZONEAM26zqvFtrFJ
	 rgN9L+12cbnCfU66lNYdLrRGqONkf588OxqIWjPCr8McurQF/s72UWpUjGyjkfnGJX
	 XbES6hBYYORg9nG2q8UniMv8CUVxoA4emT7QWReSUxzzwhwOdg8vfEQYM3dIPMfoNk
	 hDg47iqwNYEBa4PVcKlHZmTu3VquXvrm1RyK/6IaZDEe+5cMc8BvriWa2aU9l2IGhS
	 8h+j8SzMYp82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69A09C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170445409642.30682.11354969092193181690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daba1bb0a0cbdafcce9d0b0a7fdca161f504a05363dc616bc4fceee37424ef8d
Date: Fri, 05 Jan 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704454096
