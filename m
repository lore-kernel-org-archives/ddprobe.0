Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DAD31E83D
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787627434; cv=none; b=YYksXPuL42eQEiKuy6rVgel6N9z27+MJBDPK6vwzZr3/mIujRlGSq3XszoN94TSDsQa1H+byQdNMz3I+4fiXoiUPHPQTqrBqIxZnfnCVTNVpLI5IhJV/Z74t3jD4zC4x71WQZGI4VRPdMmbCt1L+YzNrZIrWT6FLsrrK4jmNTgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787627434; c=relaxed/simple;
	bh=hs+R6qJN5IXdnfLbbl74SlgvfmaTOKcScAQvwg5xZGY=;
	h=To:Subject:From:Message-Id:Date; b=ihu7JHE/dWV9hIBMHWHJcVe2wCmfDP3MZv2UoZF8GVdeakmNVzllA+DFHOEblxw+k5djCLV91EKhN3hfU3VZAzB9lyiOrrPyqlMokQjxoh8Y/MAyD9AJOk4Y3E5MIrvBEFcnXoTv8byIlkM7edh5dTt93vDiGI1+p4/avUIiux0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZ09WUUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZ09WUUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD554C19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787627433;
	bh=hs+R6qJN5IXdnfLbbl74SlgvfmaTOKcScAQvwg5xZGY=;
	h=To:Subject:From:Date:From;
	b=eZ09WUUupZTR1Miv04BswvgBYZwMhaON8ShVL+IrUA8uqdJW2NZ9ETxDwn7/ANifC
	 tsKT8ROnmD5oiLu9QIx1GFSccOmqWUVioGrB/4cmSIEVJmriv+45dgxVsGSmCqZhSh
	 7pk5yxhWd6PFps7IQWj7U6XVrkZK+MwXFcCyHSqTpMc3TDvPcf7RgI3KyZ5WOSWFgF
	 n2Vi5jkSz3uV43Us4kykR6xHHTXfrI6JP7XGjuG/txnVlSywFMc1VJf0M8KsfF9/sW
	 utgXkCpkeDV2Rm76wNFsaQiGNFLXZ4eR4tz/gHeFlqvkVWFiR+mNtj2vLDDB8GKA8a
	 3v2Nuxd2ahgDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3E4C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762743369.1201.8647893666697255281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719a8b343ff3eb08c126b590d07b388f2a562a8de692004afa614edeead4fe45
Date: Tue, 25 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787627433
