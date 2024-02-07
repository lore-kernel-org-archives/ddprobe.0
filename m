Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167B420317
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707292697; cv=none; b=KbOHbFt5bL/+CqMvJskx8UmwxtsBfpnM0Quc2a3M+TktjKo6nqk09DmrssFSNuXHDS7FtNhbCsg3K7ra6EaanTgDEzmcmf2digO6c0CKD3pAJyaldJBjzA7KIAgvkWaN2DM2P9871iDCE3imLB7ZfpkcH1Ml0r1kBHcIL2T+db4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707292697; c=relaxed/simple;
	bh=Q1tJAqEbzDtAWvFE64DDoXCY01r8EMBMKSiiu7a37FA=;
	h=To:Subject:From:Message-Id:Date; b=RP8GN7i2vxcUHDNSuAQrMg4+oGl3OMOAtLKzpg7hsIl6Glk4tTFrjZhQwHATLmD2ntv2kfuuZjK0wI2dsCtdioPceZAONfbHwdY1bS+jdIhUaseESCSZlZgOBllcxp8bd0rGyoxZ3jIbjK9dQFC/qtM6+8naz8sxu1Fc479b2Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnWAURL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnWAURL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BB2FC43394
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707292696;
	bh=Q1tJAqEbzDtAWvFE64DDoXCY01r8EMBMKSiiu7a37FA=;
	h=To:Subject:From:Date:From;
	b=SnWAURL+uMVxIg94+pwpGQD+eD+41d98ItOPjP4iWnfXkq/IdnjlfuDUboL5geZMV
	 94iY5uP7OizK96AR4fccvTGrKA5hK2N853cMQGMg+t7IjvJL4tzi2H4scXfDfcHcf5
	 P6vejdeZq+8zc1OFXoHnSfgXKQ1hhbsBA+1eVkr7tcYC9fUVYe27jFxsal1x2y5fwz
	 rFPg5n94hP9kMsZwZuppwcCcrbIPYqznSGmPmhIsIWj8ZvIESOlTN5TcEDlFMD5Hkd
	 oBllmgteYpCLVsWSyHrtvfWa2irmKCo19quFUg2Wc/mwvC+3s1DhZ91eFivtdM0wAH
	 7NsS4mQsz+G3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F222C4828F
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170729269641.6590.11268285615248295886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4945cab27dfbd09efd99b86e3b504036785df11b547187e79233ee78ffc132f
Date: Wed, 07 Feb 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707292696
