Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5492820CA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747769994; cv=none; b=Zey8mn7zR9HMMQi8HGhN81i+KdWxm++um9jAUiPeaqW/V1evuiVqRY0PjNfjCNk0mIrUBWE/v3dMJdL1eNzqVEOxSRvDCMsq4Q4nd4Arh2ksJB4dfF279cDa4wzRj+3580aNdCUP1D9apQfJ3MnPAH+S0a9zRppjr1cfVSTys+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747769994; c=relaxed/simple;
	bh=Zkoc0P6kQg0L7L7dhEQNLtTlFcQIArSd/6UU6+lDb60=;
	h=To:Subject:From:Message-Id:Date; b=iMFm2AYLNh2oDcaI6eZo0GxYfmi3AAI1wBHblflXfEkcTGii51+Tv9kSbapCoOgmVE61+N3h8oP7pp3ZQ8i5+3LWo9sUw4Okyj+glqkTqpvBttM7060Sj49A6ZaFj7YtlcT6Q0zIskGOlyYms7+BqbdGy7rkg04WKGiCsqseSjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7YRGiP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7YRGiP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E710C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747769993;
	bh=Zkoc0P6kQg0L7L7dhEQNLtTlFcQIArSd/6UU6+lDb60=;
	h=To:Subject:From:Date:From;
	b=A7YRGiP5faeI7XkHhuhOYKqWFD9IVDlgCv3VXBYrA6kG/kU81eqdNDn2teuRav2at
	 nnGlgEja12uotYxWH7CAEmtELWePGu7U26XyjTgwrq9AdqFvlbF68S4FIoab4wWmB/
	 mQygXDUa3loAzkJ91RfgUdvQ68cOl+CW3idaPoV5ZGfEAEyq1x4QSgHbrq10EkKW4I
	 8EhGtNYUr0fF0yE6OTBQg7JvNxIcPyTxx6F8hvAQN219XyOIAdMKbMr1A79Vs7fRSZ
	 0eAHDdYU8+UKjKjSaitBmel/Bvvsjg6iBxA4+Nx44OD9SJkkju/LZIjJhN8uiOk4FN
	 AMYk8RueKWjbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7BC54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776999357.7133.1617964674701650426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a972a94070e43e01cf5c738610221564c892a3643470bcfdea3c5385c86e40f0
Date: Tue, 20 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747769993
