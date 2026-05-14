Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833D71E515
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778739034; cv=none; b=PMoefZezSVKgz+6MGPLiE7Dfw4xdvlfqj8NIJrY8jjXEAHIhBqbWPTt4zcNj15kHVGdTQiWqbHcc8z93wzXEml5kZFYc1Rbw9K6fa4x/Z5SQCLO6vUN/+DFWZNeJTCTAh7JvRb7lvCfU1lgkM9JGamS+x6gltumfzaiqhiXC6MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778739034; c=relaxed/simple;
	bh=PpHk2uN3QNUY1XtLEj6C/8cjuf6+Wb2tL7e17ogoPJ0=;
	h=To:Subject:From:Message-Id:Date; b=R/lc9T0GBGFP4HHWiKRyEpuQ1ulgPD38MuxRxdAyjtMnEtunVVA/Um7KDkdsk9l1nT8eiL5rbtO/RC/cT+dfrJVeb2+lZGjSB9VVdBH5fp9mN+iA3q9v31k02Toh/2aXPs4G5R8q/Cy7329VbxNOv+4q02oHdyBNqCP/yuJMTqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvTGx1w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvTGx1w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB90CC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778739033;
	bh=PpHk2uN3QNUY1XtLEj6C/8cjuf6+Wb2tL7e17ogoPJ0=;
	h=To:Subject:From:Date:From;
	b=qvTGx1w5+UXYY5VML97qQvh8tFqX26k+bWbFtPLY87HV7a8KDG0jOiVCLi4bZlK/3
	 ieZgmkOurb+xvFTAl6hGAukFuTGcqJcR5zUAXV1SGEa2WRCw4vg6bV1ISnaXwR/03Q
	 DxIfbZZxc7/2JvPZ6ZYLI1wR3Ac00PQ1ZFuwR5yaQ/GujrIN1BNTvxGBMSWoeY/ksj
	 1SB7Ml+NO8ERsycxV02LFC7OL/eGImG4T9zMGWsskXA1imACJshTz8RIVhzY4YOvnZ
	 22PNQpQ/cRHYHJ94Gsa6LrnnD31y7grDeBbJcLg8OUHFHpGwC2ddiuWgEe+XKPuPe/
	 AEwhWCstPEAqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C4CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873903369.25553.11862204555104812667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4406b755b2289faf36a769baf9add41ca9022721b819636f0dc4737815d1e068
Date: Thu, 14 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778739033
