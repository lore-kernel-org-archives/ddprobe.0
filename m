Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC973A94C
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707874096; cv=none; b=M8caC/GBL/EpHkFBE3W7giX86cQ4N/fexhwYgPURUiLqp8V0oidNBrZ9o3iEvptqBAVZDLnmx41tEFWmJz88dNzI+GGFdrxdmn7wIXGOTkIahaRCqQFFmsbaiOS2rCcBT1KyfySkVnzqCImvEOsGEPeEQlggQkyhXyqSLEHT3/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707874096; c=relaxed/simple;
	bh=DX4r7/G3z/YrTbMgkXSB79pOe/U2jgInlXlqVEw3Gac=;
	h=To:Subject:From:Message-Id:Date; b=GFeXR2qxWPrIXiwD4JTDF5pz/RV0dBbzG61UZifzBnWQ1podg629fQeZOqOjWjZr1LRaxsqTL8PNGvU1pHWhpwyluEQxZei/3GMQ0t1ff84EDHuKDB7WFra5rj+tJbC0yaPC29F2wcrJfG/AxNHla8E5vYGdrrfn2n95k10UaMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu8PyX4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu8PyX4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5701C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707874096;
	bh=DX4r7/G3z/YrTbMgkXSB79pOe/U2jgInlXlqVEw3Gac=;
	h=To:Subject:From:Date:From;
	b=uu8PyX4fFk+hjvTWzqEFvvLh8MOZJoDJKFp/kcazg8+mYJOb5jARc5pVcR+MJRe2E
	 6cn1i+doLUMqyVCMM016q4VVfkTS0+5DqhNAqu6WPjn+B+6uZjaMtxAQcgzRADOcGf
	 EpoeS5NMsNLGdAsPhK8pcl5Dn4JymbRap5Tls5N0pCLK/XVIsXmq33H0txG2JrZfSc
	 /X4cFLt8NA2gsQ63VPhgVNtVD8GwZfNk9xUTdIin4Fq9Iz8dvI7lE7t/1zNBYEHZLy
	 hS5yxb4UYTcBKmzrLIpKWz1uNdgSmB5/Dgc3qS40Th/ac/gI13Cj0mEm+YcC/aNYU4
	 dLnG7uV+oBCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84DE1C4829A
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170787409653.30786.4729968053042314625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63661b6c84961d330387653e6954273af986afd40f78db81a89237ca5e5fa52
Date: Wed, 14 Feb 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707874096
