Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511AE3B2A0
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747580994; cv=none; b=DRd2cUVjpz7Ug9tWVB3QUDMKGRkiI0oooj7VEbMVKAJYEX7KsFJ4hKbQ++bxuAgjbyhlr25uCdgMjRcs2+6gkvlHu47CwbFTCRBQbNXGC/I4x+OSMX1EvrOlQ/2W17oqVxzI7M58tkWNY/erjUfTFFqLWgPdX1w1/GDuMsWytgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747580994; c=relaxed/simple;
	bh=6HWJTU2hjGaKxpGNmDjxYgYeZt8ZDfK4JbOI+rRL9Io=;
	h=To:Subject:From:Message-Id:Date; b=Kzx7ZE2g9rxwi0zZWP0tp/VpvXgrS5CH1WmCovpwmZzvfhJ/D8zEtNhASkoGTWk/jY5A2kEY63N0+TRtWoeigaHaA/joPDCBy4jFSVxPYxOmnW5swZvYHrotNB4FYRbMw3CBnSiD+SVGz4oFvI7wu+cl3lKDzmReupC9sHtB118=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHrhkFpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHrhkFpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA606C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747580993;
	bh=6HWJTU2hjGaKxpGNmDjxYgYeZt8ZDfK4JbOI+rRL9Io=;
	h=To:Subject:From:Date:From;
	b=sHrhkFpFsUDLPQ8qcDAWncMCmgrapb2GB7kZ9QnwcQO7GkZhaa8WtW6kWsAcxDpba
	 dj7NHs2fuT9EdZxmcPEwJPNr0ESHVU46JuMNL2dpBh5vE8myeLV8ionKebuk2QNiat
	 iCtS9KiScjRLUtwM8RRbFqEx1f/98WcLEkz2A08Emt8G+CS85YaMRJXS36rOCAr3a4
	 rxFfSbEz7msMyAO+kAlsRBLTNQ6KXZcU7HFLTsq33FqnMs7hHcZJ0FTXWquE9U7gjS
	 G8v8XE1m29wJo8QOSsKQvr8Xd5PwLqIPiFificu219Oh/K/t5iyrMDHxstF4qTOrDl
	 Cdzr8+4Ouhgiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C8CC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758099357.20865.1594979433585907514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8248d8f4372280ed49122de8dbae2c7958beaa89ec7af7ce6772717275dfbef5
Date: Sun, 18 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747580993
