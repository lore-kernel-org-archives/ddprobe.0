Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1801613D503
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773117294; cv=none; b=ZiSGew7nXKvBGmUJKQK7ISqNNNMi+EeZHD13Tl05aPtRi/eCiAm2YIVRNZrA57D0mf3ujn/+ahH4FdAg01x8KNOKK7WNN13iEGjXOefcWjTfzgRAMF8Bi8FQPx3L35LzlCLDPvaEBaSoLCIbqNbxQLkaE4S9UdMI9tesZ00TJBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773117294; c=relaxed/simple;
	bh=e2XYVMIW+d2R6oO+jqJBLOAF6pVh15guqE30tkuiJmA=;
	h=To:Subject:From:Message-Id:Date; b=JQRFpv9BUbBOwY2NgyOohJ2F/z8XTuB4rgdW6lsliY0VMf3GwoZPJf3j5YYWxzuEFmkQVaLEKNHMArvVNcU89KcTiRRf5+TuWqEi+CK6WHgsay4MLoxc0ZxacODMIJqnaEp41yvE7xzNizybaBocSzECucS4NQN+OkVRZANsxXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ty+SLmFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty+SLmFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D1CC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773117293;
	bh=e2XYVMIW+d2R6oO+jqJBLOAF6pVh15guqE30tkuiJmA=;
	h=To:Subject:From:Date:From;
	b=Ty+SLmFvyZKiGKdr+0aQZnOS5DRxs05J8FsBda2CKBc12VijkYVgU/Q6fAkoohw9S
	 68ZMfE1M2yUMTgCIRC1+ViEwlHcjd1lbWuXeS5+bkzbOqQbB7zHOZYyNMbkxh9xOXl
	 ng4FdQw4fq7nWGTwmH+mwa9GdsHFTl+B0xDDefJkP2JwDLaxcFX8JZ4va4WB5VWWBI
	 r96jMRk0VqKKwU8EzTCNCj6QBvZQWhGT91QojlvLJ3oh4AzebB3vKJ3isTOcMUyNjQ
	 uNKYMB0Y978QGtSZ1lhiLk3tjDJwItGPBjUKEnQZsMckbHi9eTiz/B7DkDu0wQj0kr
	 QnW/Vk357XCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E8FCC9B8
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311729358.9786.3812324990454682054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7b91df896d3968a3910bb83440231a1a11137a57d714817c1e2d57041bf615
Date: Tue, 10 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773117293
