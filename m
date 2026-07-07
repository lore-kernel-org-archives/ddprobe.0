Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A682580F3
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783401514; cv=none; b=u18/6DShvlsYNOSeRURDJ68m/zP4tz1GsHBGcdvmACgrHjxn1k1EEMukVdOaGodDmt3FeXHw81ehuSOfjv+lxZ73B3MWP+zTf91mdh2pk24mhTIXVghaLbHLeug1YKFQAyAYwbYrIIjJE/VHGfwGHSCmhlClLnO6MuK4lZoI/qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783401514; c=relaxed/simple;
	bh=55sf6ATES7rTsiyfH5y1J+Blc6IWNRBFcA/vYB/7uik=;
	h=To:Subject:From:Message-Id:Date; b=sFBVOYyimLLw8ohadVLrVYAF7upUFQ3XbEtlbOVjyuMELLPOzOKsXatss9hbAhJZSfwz31AxOwbfvZv/7w9DmSO7iypTwDCi1/XuiIet9uOCMnl969MMXLr9x81YIfWN5y3yELQbYiAFuVK8EdhJmKLyvFfXVbgMcpJqLqlORyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZS8Odx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZS8Odx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB562C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783401513;
	bh=55sf6ATES7rTsiyfH5y1J+Blc6IWNRBFcA/vYB/7uik=;
	h=To:Subject:From:Date:From;
	b=cZS8Odx1wp5ewRmvxSb+clbwzt7Fqhyzj6iG806H+KwBuCqeR3bgq6CUuZwFCf+eP
	 ekiSbqr2I6bLYBmVfBKp5cuqDHff3vuei7J7K5uaHbkCMH6qNmwpmNNFvuYCiIFpXQ
	 hI/2LhkaiTfEnPh1LPYl1w/H2sgzVRCQ7ufAt5T6Omfkz7YdvDd06oqsCaNW2RoB2r
	 ZHGvvYHx3wLK1IqcUHIDdvZR7G+R30dV+ActxGFw8AjiRxN0mgd6A2RmAG+97we6jr
	 Evz4rBZc9qHShtJJsaWgKRjF0rO8UO7+5MeeAyjWyPGcZ5rhA3kJyAtJFy+sLA2Izt
	 3izGFBm1uUZiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA705C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340151368.20532.6678182275158432237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c749379eaf2d67684c0784f5baa7cdff945b3e30677babe4e06f3b0b02e35a8
Date: Tue, 07 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783401513
