Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23BD1DFC4
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711747697; cv=none; b=flXfHsitzeyliM3sY2cqibBdve1y4n9H3LR7uLO8alcfsp6LJ+b6Wme9l002oI8KDg7oMj22eS3P74ej/SfDYppxPB/TwMzGAvBIqlOTlATTG34VSSLAd4psFJun8n1bK4dHqoihui1YOJKaBiLpEc9M4wwcJb9zM8FWED9Yt7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711747697; c=relaxed/simple;
	bh=FD7m1ZOOT9gIAHNnha9sddV3aSX3REQNZu/pzpkzjbw=;
	h=To:Subject:From:Message-Id:Date; b=D05lIsb9gxp2/VgrN7LRCTa2gF56hUl9p91um/gw4lobar3vGaV7MgpYpNDLGdLQroBTFdQX9HmNHQOqJ2lf1T//M0DLsQQK1H8ozofLSRo9iZNMLULuYtTUl3LGoH/kjiCjkxCIeHhcBBFjlQuY6Z20+UrxQAaHzkkk3dyFyWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=efqVWgkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="efqVWgkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AA6C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711747696;
	bh=FD7m1ZOOT9gIAHNnha9sddV3aSX3REQNZu/pzpkzjbw=;
	h=To:Subject:From:Date:From;
	b=efqVWgkMEo3yo5vWX2b42AT7ntHzwmeim3ti6W/NJ6UeKjJMPz/Ayl521OXxFkxeE
	 dVqjoAqm84ji3rFIOAk0IqArj9i0B+GLYyRhX4+vpJDF8Vf79w3dW5NIEoemAWNad4
	 T3/TJybwd9j9fXQf+FCglQ37ZaI8wFzZUCL59XKypNVt++wR8sr4qPISh2EFOSjWO/
	 WyCymBCPemdDeoXHOtEIGH9ip5hkdqA4m8JbYFkxBZn4o8fopxbnl8xC9jrZxL1nCX
	 Yd8glshuoMQZiDapOcwcSIk1XV7rejEE3WQipRsUyxwIHB0eEELjjn5QdXkP0BCQp+
	 ajte/LdGYRkew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60000CD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171174769637.30648.7378378455108364199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1b9723138c65883eccd2da02afbf3b572b6104ffe5d43acf39d16e00351690
Date: Fri, 29 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711747696
