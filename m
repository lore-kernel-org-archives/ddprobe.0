Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E161804A
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752406794; cv=none; b=uXtGaQuDnnUWh/YRUQw69T6H9I/u5dL8HIU0xl014C7juhK/ib5SPZoWpllZ9SlNGy9BHEhycXz5Z+TNQn9LrmD5kDkvkn8p+Mha/mKQJzCJzJJdpXMtIVqc+VHjbcwF+EoCMzdXK+be152j01LQvoJEE5qUgXjDRxCbrd5UdUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752406794; c=relaxed/simple;
	bh=3sik2zMgv2az2zVeP1PbBxEotd5w4Y5SD50EqNg49KQ=;
	h=To:Subject:From:Message-Id:Date; b=VaQDd7OxNOh9LJ9r038omFhpp4UScWeH2r1Bhz/Xdaf+Hqv0IpUptO9ePj8tHXnYcLh/R2DRonM4YDyUab9y9oCvwoxU/XNu7q24u/fnbfvcN2XqLj3aqgaXJBezSqMFYy2YlT7iMwUMPXsL8vplcf2+2eX7ez8vgtpmL9LTQzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhenaUQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhenaUQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A09C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752406793;
	bh=3sik2zMgv2az2zVeP1PbBxEotd5w4Y5SD50EqNg49KQ=;
	h=To:Subject:From:Date:From;
	b=QhenaUQGljIVb75Iyr8GGP//Muh7NxcGaIkJxqnX5/btVgySkEOvTa1+RaboY2NA+
	 IIkCAqkExBdiF4OWZ1JVTd91T14j6z+p/qX/CbfgLZrRchktXN2T8tgEvr3Gj5LOw7
	 4L2KS3nUFpmF2d2tfeELNFaUTeWGdAVRDWKz6YjBDC1WEc+2ocueNXf8qYO/Q9CiwP
	 Iw3wKMRRPg1jql2q8puaNrmdRPJJTvzB5tPq+jYYU5X1Sn1xaoE30rHtR73Kkil2qD
	 JAjdRrKY8IT8MwTvFiM6kR4le4tdSJPhuICnemwMtR99wT7Mrb45pVAS0giVFblyLz
	 oMV8ZWyG9Wf6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940F9C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240679357.23127.4158901607743215026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f556d06c97e44d7572235a58fdb648f2e570bb60ffeffc47702aaf0f557d35
Date: Sun, 13 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752406793
