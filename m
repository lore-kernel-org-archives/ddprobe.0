Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6D63A1E94
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767567834; cv=none; b=CVj02lupNq+zAbhOfWzfnWWxJnscZ8ih9dF6TJZy018oJp5Z3bBjrHH1VduPrjwheHt9o6SbHrr5je2A3f3KLSgY/aybZDlsB/by9+YskpnDe33iy40VF8ro1qzyVBKZ/F6elNnT40fteiBw6N3S7m9z/xpNoJpqu/UDy+ul9U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767567834; c=relaxed/simple;
	bh=RsFGYJkf/ybZ2JlJRYEX1O/4EI8VWf5JfCRA2J+jIyg=;
	h=To:Subject:From:Message-Id:Date; b=B1FNVX5wXCNJmLTcEv3015+s3t9faqbm5cbYVBP/CuFQb51zr3kQazNI30BeO1qkQJxSQn7WJPDpyUR4vm/AvYm2oLsbk6JiGRAXsF2WGvRWSzl2HbYtTB36HEGTExus/F6f80M8HUXuKX3TnsyEmlJv8F0p2Byze6Z02s48DfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCAJ3oXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCAJ3oXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767567833;
	bh=RsFGYJkf/ybZ2JlJRYEX1O/4EI8VWf5JfCRA2J+jIyg=;
	h=To:Subject:From:Date:From;
	b=NCAJ3oXwSbBoFEuk1v/TmsSOpgcWN/EQFYMgywzsyfP/pe5wkTdNAEqjZJ93uMG/y
	 57yFcu3sw+P4R8ptYU2eo1++krnCacNPI2j6HE2Aw4/dac7e+xHNI0lfcJI45xMKIw
	 eej1fwQPqHQ7R6faIh9iiIyXjeDiE+G8nOIWdXQpE+x39aXjqsIige44retuuOPNzX
	 BYBUQxrrYZri3mvjq72ca0ZuXO/PCT1Gw/cGHzq74TyzGtJ8Uu3MFfqA1SrAEkbiPH
	 Mqyx4w35InsLnJkMNN0CmwiHm3dXyk0e+FgMUn5V8h6g3pMbMUoFxStLgHcoJa55/L
	 cBaPLWp+9oFXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CDBC2A070
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756783359.23165.5301387943823564038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be050ed37dad0b732167a61587b60e2cadeafb04b561eedf5bf097abb740a487
Date: Sun, 04 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767567833
