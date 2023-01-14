Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87462F3D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 881F7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673738487;
	bh=4dKHSWEKggpAprYdgwcGRhjjBZUaJsxPSLwg7XFI2Yk=;
	h=To:Subject:From:Date:From;
	b=pD8kdKQkVTJrABfgi6xvr5Wzl0YrHdh7fu1VD0ozqsaI7L1ljJ/dPqMujh+IXiRRz
	 ccXM2c+s0rT1eCtj0fJxVF9U9pxU4aMQlTxnjV8dB56gqc7mSX7KjzZAVtVaJSJmNP
	 uEyz1gRklO7cDANgqgiTCYAP0JXMqGorVq183AOpSemYJtWMXQ69VA6A1bNIz675Sd
	 ZKGEOLW6lpDnGj+e0qoC2GQN9CdTsB9UwzEHsyfbTO9Y4kWG4kzqKj7qioPwSoySIT
	 CwcVn9O9K908BEPiFqCfdu8BLJx+mTrebFvPK2LrbX9srY4yyOwSjS6fjhj5sFrENA
	 IaLS02kOflcCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B3FDC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373848740.7020.16839706447019065227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389b93973d975279017ade412399c1420e09306d601bd4b78232a7619288a36e
Date: Sat, 14 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673738487
