Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF296FC3
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742891996; cv=none; b=RPawjbglt15xbCbUEQldvLzqxjbgNw8EwWw3Q0TDVv36YT4pggRnVymROHu+TXjg0ImjBTrFtgaTOXRAQ7ikpoMQSX9SkEJ8zLRFx7rR9lKjHJvCwjBsFFKtKWQSJsiYasdpyjcPFIMsHv6KKVTOSFsFsJBdmrZYOSbPr/tIT9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742891996; c=relaxed/simple;
	bh=LT+uAd+B8e0kvRsN4PlAQYA4MThHkvWNdGFQymSVigo=;
	h=To:Subject:From:Message-Id:Date; b=Psoa7XNxhtqtEZAM8Xp9eYaDabJkUitGeyZGVY8Y4AypwKnTVSPrmXFVgx0+y7VHcmwHyAYGU7TuAUJhLbNY2eiRuPZ16y1dJvYr0EG6bDQx9/D/warjEauNTZh9bwe1izvOgIF1MXF5/EiFGBTjnvJtRr0MUCbOQAtox16wnkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnNW39qY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnNW39qY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B236CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742891993;
	bh=LT+uAd+B8e0kvRsN4PlAQYA4MThHkvWNdGFQymSVigo=;
	h=To:Subject:From:Date:From;
	b=TnNW39qYakAZQE9e+gV53HaIWdsXKlMDvF0Oi5jVTYvjRhZQFV9k734fNXfBgqxHx
	 ZzFouuZ/kCJOe7EhCBdtWx60E9w2ioxv6S4F4uT/zzS7qgP/ulpwX1nmv9I8C0tmOY
	 fNYaY+v7KOiQsuSe3sbkKh7ajYwgUEjNMBK3EdDPm3FbnoWcbmD8jrNfPo+CnQ4vTD
	 AnuAszAcV7++mM+l4t5T4VbFkRQzQjsdtdB2Bisp+ptWx8txbFJUyfFmxfECAIEJAT
	 LHYaFwJMaPlQsxIMWOKDp2y4DOUBUWbDCKbmpsEhqqRd5fH5n1jkuvPLusMNypDOF9
	 ihyUoWRNfoF0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF52C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174289199362.6979.13089075334553848450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449fc968dde595953df153bcc8d3fa94419b0627ff9caab499061f7e1bc87bd2
Date: Tue, 25 Mar 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742891993
