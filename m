Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C58E19ABD8
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773980694; cv=none; b=NSjhdoGBpHCq81MxT3M2yz/+k7YThJHlEksz6uZPD3wsWcjtxw3LwY7X8oNYdQaPlvX7bBa/ID6cEgYbI4qm6bXA2aNFAmqblqcLmNEA/hbsvD2cLZJfO2JnbyhXtf8B4kfZmrAfvKGobPS6xu34ZvsSTYSFKiKa0xROMgI7RBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773980694; c=relaxed/simple;
	bh=YhScp5xNBaS+QY2MLAdSblP/y/WSv6KFN8SG1PJlLXg=;
	h=To:Subject:From:Message-Id:Date; b=OGUi/UkQC6xHeahHXsOzlLmoCQ6x2bm8CaVyO/ocd+AGMBB+Nuw0OCX9o/tRShoIjKLkrejAmnDuSCZYAZWk3p6qsbXALb4eQz4/ShsLJH0TFv8pSzYmFvEKX4Onu5/hhPl3lTOnzTI3eZrKPsgEKzA6hVGJbURNEHRl6XxkXnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XF5qQNBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XF5qQNBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9117C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773980693;
	bh=YhScp5xNBaS+QY2MLAdSblP/y/WSv6KFN8SG1PJlLXg=;
	h=To:Subject:From:Date:From;
	b=XF5qQNBrpGsOAMPnPsJHj09i7urbrA+CK3rMHeQZhvQqr+rVeH2SU2FbauBzFSksV
	 ZVAobV2177+2KP6A+bTCsm3I4iuUe3LU1ZgkmQe1jgeyQy/xrqPfmpfRnczjQrsBI/
	 wK1Hlq3VuI+4Z2dtdn36slVQjZ/QCH4KFnIGXvOtfHxUxFNoW1BhyXcYvLR0tcGNIj
	 EEbZaRdewBeWa9PYOggfydgVRsGdruc7AfKl8OH3ssywX3u1XnZ+IEZVVp3S9PU5IE
	 zcRKKeihbqxMOuptwqBIri8ZJskgH/rHUi+FJivKDESdMepGWV9ZE7ECKhY79jG4Yf
	 ihZaqGfua/FWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FC31093172
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398069358.24672.15100488067926389060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36656ced7dfcba210038a768ea2507d9a0942baab6a6e573abf0fd29d5f2dc23
Date: Fri, 20 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773980693
