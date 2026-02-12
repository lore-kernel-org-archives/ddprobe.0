Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04E0272E63
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770927294; cv=none; b=TmNHUWvTC5Brwbv52+YAyRQDaj4yp2ZMF/FG5YLguEpYg/vwoP8GzVekkiGtNMAoZ6Tj1Hghg0fwoxGkMCmbF+GjjRQ5XV+To7mq/m0ldLBS1jzo7CfUDcqj+Ky2CWen1etx3yWlaYWCQajzi7KcoxQHsYV+AJ+ca6+wju8e9/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770927294; c=relaxed/simple;
	bh=XTvZWYItzqW9mU96DTBRPu0qqsBUXONCWeC2hyVX8i0=;
	h=To:Subject:From:Message-Id:Date; b=HU7je6b0XHwohdUyz72LGhl8Z6Zb2ZsXkOubMrH+OgLAidfSPAwoD9ARqHB6vWRdiLtUfRg07Kk/W4lX/N22g64CxDxTvHWMzi4hsRgj/MyhyBM2WZ+KhwOi9kgl7R9xvNvj8DcV3OtVdCD3jMJLgkAwg2HIuA31pDft0OMo7F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAU3Sb6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAU3Sb6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2622C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770927293;
	bh=XTvZWYItzqW9mU96DTBRPu0qqsBUXONCWeC2hyVX8i0=;
	h=To:Subject:From:Date:From;
	b=aAU3Sb6u4LlqLB8eapzaYo7P+WGWH4XWPrmQaJmKZ1TWkws4W3FV2d2OLvBsLnx7w
	 O8XUuw9onXuyths1mTq2tzrgZuwZ9mZPXOORbvAUH2BPZksHzml0cGBt0XSewsOq7I
	 DK7OWt/jbqx8vx+ZWwINM2z0VHtES4ehMzSN9ZvUHJcPkX5EqKjjYEriVIpRD39ztY
	 0+orJFHcD6xcSIiZlmd8wH7TuJLCcIxcxdl6MMErqCw74E6VLfQ8rZ85fOVz549dDz
	 BEp5IMZHXQgi3qaZ8TGHC7+E1Ridq1L3CbrYY3FM7KinqInCXWW1XNgG9E/xn/dqgh
	 kQ9+Y/goUt55g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B23EEA84E
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092729374.2843.2002473391534582397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7dae7211a4fa3dd2bc295710bbca351a75b5039fb797257a01d4e44799bb4ed
Date: Thu, 12 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770927293
