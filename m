Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A482BDC13
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779334834; cv=none; b=r+YfSchTr44qA6IFS3awJL0Y1BOOPn0dCu1eAl8t8rzUuFR72BXz8yFcNX9D6AyN6eD/RAE9JFDElMNF+hlCn9w4UFJoH1Rg1FSaBG+z6/QwINqhjj/vsPzfrVwm1znbJBFnmPHLwFzExN725+Im0P4VerIDs9vkTr2FaEOpuPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779334834; c=relaxed/simple;
	bh=txToea3f4iX6gDNnJit6Eo3fajRUpH9J2SYF1cEAQJQ=;
	h=To:Subject:From:Message-Id:Date; b=rzuyc4CfKTEEIDAK/I6fWpd5OFKttw+7JQDIokBgQwe+l2sUgt2pMWS8OqUM3WIPfiXp64QkJaodV8w8nd81cORyhyP+HpMbTGGKn38YtWcnWG+BRHoQhk0tCmfOCr6NMBanCBQTh9o9jA+0WK0OLaZg6uqueG9pos6fHuEMG0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpLGc13a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpLGc13a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B4CC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779334833;
	bh=txToea3f4iX6gDNnJit6Eo3fajRUpH9J2SYF1cEAQJQ=;
	h=To:Subject:From:Date:From;
	b=MpLGc13aZgbzJmWnSX5YORl+Ky+Xsdi4il47VMmy7l6PRfIWursWW2qgZfzC4ig2h
	 wSx7FL2iDpCAOWZBpcWnSZ1x33aaHKtYWWyll/uehBTgNC9iSu3JRDhth5NVzS4QYA
	 jGtG6/nYLnq7ISqqTq8eZUPny4UUIII4OYfvjoUziOaKcIlZR1YtOM4/tfuqALbK1A
	 Wrn7MANM24x4l/Y1w4C70NsdmW9zGQQyxLLXwylGDXYAGI1vJkKq+QC62lh5TmJiXG
	 jJT1YTr0UnPV5yP2IhMW2zev71ZZwPPR7hnCgj3d+Oz+oVLW5eSCZzRxbVMbQRNVU4
	 V9Xh81UsdTA9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38F7CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177933483372.1460.14955021815347887983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0359182fd3d50221b959c080de6f46086d82c95b16911f380440fe8fbbfe8df7
Date: Thu, 21 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779334833
