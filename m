Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414E4199235
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739719736; cv=none; b=Ni8zO3M4C6Qzl99zFago9PplurYOszndp3kDIlEQQJTPv7CWTl2dGuuDOBldyXuH/dL/xu/D+9mYSJoWQFzgR8pr4auvMDqKfMi+jAc1q/Yct6+oPhHavojqRhjgmDjfz3e+jYsH6TjKS/uhRviBG30g7BesjQ+Kst1g74Vr3Hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739719736; c=relaxed/simple;
	bh=FmaAiqvDcVeyhIKX6QcZBZnpNxql3dksgGR2LG5E+XE=;
	h=To:Subject:From:Message-Id:Date; b=UuKqGt47PUaUpVxf7SCYtFs+cX8kYX+QiOCej9uspsAkoLJSFpSmSoKcp9yDKzXB5YlMaV5BBG6NXWSmJ8MfF7TOVwC8w+9A/aKOzpKgmhhh62i25q7xx+14uSz3Z+JR7CZuAPwWijDlGiwLGmFk0mtzBzHhn1iT+KpaufLLTW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7OpYf2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7OpYf2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DB2C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739719733;
	bh=FmaAiqvDcVeyhIKX6QcZBZnpNxql3dksgGR2LG5E+XE=;
	h=To:Subject:From:Date:From;
	b=K7OpYf2B6oFi9U6PbuaPmD0OhhLnujnEMMvQ54ow9f3+A8qEXPwHBSlB1xBtYhNit
	 lCv1ysWZzm1vOIfOqNK2FO1IZiKi5ZSQOTkb4VFO0fnjDasfGoViiwOFjSRGb/GC0x
	 VbUn/YIYglxwRx+AHtyio4nceTYpLpqq/WkOKL3SGxqnEBuF77cWrqC23BAhHRmYX/
	 ohYbZ9g/+P2paKG6PUKZa9Qs+R/dBxS1p3vAGDruXmpLynmg/8Yh6hD7/A5+u2Pej+
	 4xE41mpc+KWGOrn+wvtQTcPXGX2NXuAPlhQsQ3NVRumT7zuSmD+G7j7npPvsrJzQL5
	 gLKy1xKNSZ1OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3BD5C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173971973365.24103.16723261972781289145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51077f0c3f5c4eb1ce3e5df835b4dcc6d1b3165be9844cf0ec90b67a0c93efad
Date: Sun, 16 Feb 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739719733
