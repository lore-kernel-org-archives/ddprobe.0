Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290851C84D0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781400994; cv=none; b=mDyD9Zr92UO1xdPgpknMCyFxOxRqR1PuoVCLx699lVdOR52UHMi42W4FIf5cdP6KTRvi/uZ0T4sBn0n7hxyD0np6KLum8zCZbRe071heltq1u9cqvNfLSdQDqaW7Z+C9GGVJFBHZcf9K1TR3anFhU7RZJjY8SUyYs+iW5btYfKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781400994; c=relaxed/simple;
	bh=/XDnB5sOI8NT8772PzpepD30iwrAwaY7XfNyAY62+l8=;
	h=To:Subject:From:Message-Id:Date; b=hjWwuB6VgNEUgMggw+2b8lzlt2NYR4QfT5GgCozJeHiCYgFOqY69vRSH+/HaUMPctsxFB7xgBZNAubGBQAqiRXr/4BOoZ+CiSigs8OvYGBEv+UkVx1j2O/dFvZ9P6+SqG6xO/xQdcnmaw01YsxZ/Zg0c5xVFRd0CzqaQitvZ6tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvzR3Kb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvzR3Kb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C351EC19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781400993;
	bh=/XDnB5sOI8NT8772PzpepD30iwrAwaY7XfNyAY62+l8=;
	h=To:Subject:From:Date:From;
	b=CvzR3Kb/sv+Kf4ur1E7JO3BUM8cYWRbOYF3kUr7DtCW/psmSYZ5Wz4dcClHeM6Bp7
	 ElqMHw91DTG3kSA5bC+Lh9RFGoGWOd/dUnMw2IxwfXp35c0TE/Q1JjlE+F/lDiEMWB
	 rQHInRLtNB1145E8i5TaGhjT2rkUR3ekeIGViQ6U7R5CiU9J+b8HXC/ZioVSU2u/bX
	 3o5DVxraJQk6aaSNR+aCtWLBSTNaeoBu2bBH5gs2Ru+KytE0sfzlP2Av1XyZZf5fLy
	 iYj39nJCS3fUshy5Y8uYyZ/+mEunZPQVOlF+zYj10DXpEi+wbCluSiuPPoKDfhYvps
	 zGywDgxHctpDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E1ECD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140099367.7648.3425386605419544666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc4af02f8aeaeade66b77168cd20a37aec7ea95ba09c42e4dd801e37db3ccc6
Date: Sun, 14 Jun 2026 01:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781400993
