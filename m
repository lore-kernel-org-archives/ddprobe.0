Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFA7219FF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736660754; cv=none; b=QZmsMPbeBZVNBDd5NXFqvxggPZCrXmPfcO+Ls18ZAkJtnmVf281dQCe1iq1qLdKgxH3aGnz1tV9wKfTREwfdT8tI9MNi6k2UdWUH5Sd1qqEb94Bn3l/ZO0eyh+esay6rSoIDxrJWgtLtCNciLq7Xq9mCq/rS7KMhDYYLEPgvGp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736660754; c=relaxed/simple;
	bh=x9ZMZ3g9p73d3OVmlyKMBOiZCPpKfUcFMkJ6GaNuYMU=;
	h=To:Subject:From:Message-Id:Date; b=bWh5fhB4qSOuIWaU3XU8ddGjVMgvDX6lb8aRHo7gOvTlzpRcVpKMAQirPD+zEN/IUxW3u0JYx3fxdYN+FWSkjjCG5mu9/TviC5nwe4F2pQHjQvira/bFNndW0j5yfiHLlWBd4i6HjMA4XlV218oyCdJ6lobvEHPuQH1Wx8BBBlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+3vLyBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+3vLyBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7226C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736660753;
	bh=x9ZMZ3g9p73d3OVmlyKMBOiZCPpKfUcFMkJ6GaNuYMU=;
	h=To:Subject:From:Date:From;
	b=Y+3vLyBLKRsMDzVl3rEg8Nq9TrOtfr/wcd8qooxa51ZxLoAk7jcGdYfd4isdOVAX+
	 yBKMmGr3RTyq0WzBeFTeiRsBa7tBoBIHloFx2eBNr7dDDVjLTSVhGBcuqE1UQ2kMkc
	 6+TtVSy+GjdEYqzoMlEIMbEmMwAP/z0uJjssF/d5y+9Q7t9Ps4VuC9lzsM02F/3DOJ
	 wmD5ICe6tyL52AvsIhadsmcnMzjGoy03W73yrDtyGVumNM7i3MroDdPH34djM2DgXo
	 G99d3my+1+6dbgTbiMoKBzqH/rLw/nUV+t9iw9Lv0PACdaqOCxpBcgJds8LZnawDKd
	 wU4OQMOqaEt2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943A5E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666075357.13662.14131479872723215279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa253fb53846d730cc59abb14b667e6fa82bfc6860654672dc8f6c8ad315d5e
Date: Sun, 12 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736660753
