Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41615374A1A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781201194; cv=none; b=Ghp4wh4KbhV2VcAdLy1UVVL22BUp8Dp9XYQ0I6CQdDuJPjmp/61aVVehiBu7i3LVfDU2k3XxRslDnHI9YWpYTL4YXoCKAtA8uzJ2nItz/BPhyMZ1SgibO8Y1K4gEt5TGe5k9w1KyGuFYx34zNlydETQh2Qo+XnSOi7UCKf/cTYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781201194; c=relaxed/simple;
	bh=MBf+2rJjeRIMsHXgTDdDi5l4EghHLWnvtDZwdmlGBPo=;
	h=To:Subject:From:Message-Id:Date; b=lM5cjkYZiHo3Ao8stXly/jVnliT4hAv9bgh8ELOztpShc0sPoVyrBdx1jnzvG3lLyoY08svlyjqYaGdDF/pXrrt16DUxfol6hwcGnwHhRNBosFWO9qKwcjNcrI2p5lf2g/ePy9ADswJvbc2Xr3ONpElTlFxvdb1Z/xjtNHcqiL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6I9OMgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6I9OMgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA91AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781201194;
	bh=MBf+2rJjeRIMsHXgTDdDi5l4EghHLWnvtDZwdmlGBPo=;
	h=To:Subject:From:Date:From;
	b=M6I9OMgNKHc5DCab8/6hKc/pF8mNlSNxAkC7Lok5ITvMzfn/XdO35cRzz3ppi29gD
	 BOmGGweoPFs3pmcaqnVfii1t33jDnsKpd1dYwqkSPUpXbzOuWyH3voocC2nfE0jcXt
	 v8nhNrwK4HjhI0BjJ3RLYTXDa+TUpU8YTbvmOksgbasAr3cWqeF0YGCOfJxJSZp8OF
	 ygXKA4iGvNAgCY2PHLxKWnMlZVfLPe0gOTBWnr2iQq0txp1xGz8eRjisuOb7WHsOFF
	 +7xySu2o7cR6lMgBW4W/6+ZjCS7EWfiN2EKQzPiuXnVQeA+23ykNH5xJr7Q78Cs1xQ
	 VqA9kcsGdjbFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5189CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120119374.10398.11222818704607409317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c510138ae19259e03b42718fd7ee87d8427da64d3fa0c88d93826d541e5b5818
Date: Thu, 11 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781201193
