Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC58920B22
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778372914; cv=none; b=mXj3NbIUvTq/i2nLf/PJcxPmDIYclAyGOYjU/sYBeJA85pyG4Ro0LQFVpVyBmJ/CbG5ViXGa387CWpn+B5E14yNAa42C7q148iuGS4ZDwOSme9uhoP8bfoNRqAR92HcLO3PGRg5RMmHTLUFZY42sJNHAABfwy+k+1j2bTybjcws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778372914; c=relaxed/simple;
	bh=esR4c//i8AFVn08RQSAgYHXtk++iCzDy/RdWZBWem0A=;
	h=To:Subject:From:Message-Id:Date; b=oCcKfCZ7rFhx5ZsUGtA6d3B8T0QEHNztRWLJTRJYtDFNGXpTSECDfXDjl5aYeisS8pen+XhhRFqOBUOW64ssoXF8OdnMdrt7vwU9hrdAeAqt3rQnccjuTrSEwz0f/V50Y0xKzad2DycQBXIHMRPOy9aSAflmN/Tl1MCZEY2m2ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=difz2a/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="difz2a/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 48034C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778372914;
	bh=esR4c//i8AFVn08RQSAgYHXtk++iCzDy/RdWZBWem0A=;
	h=To:Subject:From:Date:From;
	b=difz2a/qA4bgZjk5k8QHHYujfUq+2ZmaJPrGYDva5Q9wJZYyv9JhY5RFKYcxxYITb
	 w1jw9i8BIo+h5MDmMkWPBZh1yGGNlbJurus1hQuAQwPyoz5WrW3o7GEtq7/PMOG/QK
	 fYNbwTxyR9IfazelUrt3t0MfekdMpC/xUIgVfYgOzFefc5UeV8UJ+LXtQ/bB8bkD0+
	 MTnCXgHuHakHTsfIeqwfqV1UQ1Juu7+wJI/ILUq9mcr9cNWAcCnX3QpsedJTDWOPnM
	 1Q0QfqCL3axoYoF5AV1mZJ6nahulaayL7DF1hfpAh98HEDCWNzqTQ3+YvxYTC/r16s
	 zAdOM+YRk0s2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00892CD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837291392.17872.12020622654641152184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b1c7f500e5210d5f7790b65a7551c03ef68fd7c78de0098acac650b7c8f8f4
Date: Sun, 10 May 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778372913
