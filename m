Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D34417C79
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727867754; cv=none; b=p8K8FMOOjW7wgahi0QOkTvq3Kz/6ijpq1Gn20BeiSrLpZL4QZMjBP+lH2olHs4U7fWYmf9JGHkGuhfd8pwH8pMUVBiCAUeBj+PuSMewpIs3WxHFahHt1WklbKtHjlGwyhD1R3kBiWM4lveeBahojCLALhbHeIbWYKfdY6QvYTRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727867754; c=relaxed/simple;
	bh=g9BUrLfXw4ww11IORoKEgZTtgZJm8KSZBCvAXTa80CY=;
	h=To:Subject:From:Message-Id:Date; b=u6SQmZy6vWYhT0AmeJeKLIBQId+uo3e0tWavbnP/DKVx642RHYmskpzoWJXsDUOJmigXDEcZ+QYsySLlDPPSd9Y8HmwB78+h7TkzqkMhDp48YNgFPaE8Mlu9+9/5/XsV1HO+Ou4WpDUp2CEdY2p0niBdiWyJG4hbd9w/OqqCFlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onuSMgF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onuSMgF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC90C4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727867753;
	bh=g9BUrLfXw4ww11IORoKEgZTtgZJm8KSZBCvAXTa80CY=;
	h=To:Subject:From:Date:From;
	b=onuSMgF4sps/1kZZaF3uvQ52Vl0gS9IyjkvVzsS/X+W9nq0SLDMo7tieralP0z5dS
	 gxZ2utSmJxf6kw/l1/Wo8xw904oic0k5+vcdp8yCrMwp5q2+VocXZtWHKxXOv8ly8g
	 8PXjTbWqLHPBEIjQh9U/s66BTZhoCAM/zjCMeDslEnVuEV+v35QCBnpix8iHiq2BpI
	 WoawNdwrCL+JsjiWwQPt7Rlu9+rt+ACTCU5RrOzinalg3X7z/YAuAkREPZqYbgRxOJ
	 XV2WDYLIlfaqZscn/pDUKX2eHLmYgYmeE1UzyO9+9N8y0N9S0DcQ1UBV0zAF2GJ0Qv
	 fRvI2F2rMwZxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C75ACF31B4
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786775363.7125.12875142700985157850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b5282840b02996b52f47105457fdc84bf745fa9b315ab0118e2702a8276396
Date: Wed, 02 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727867753
