Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D471F3D20
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747490994; cv=none; b=WlOa4eHNVDbbMdbWIkpHXCz2/hOtfQBgpYLot2BOq4oE25dwlFjzaqBqXElm1w90w2mRmwaOFddr14b2bT+v55rGd2/4PF359l+dunm3oPAIAyAM7q+sdBOwlupCSINK6epRy/0NToIrnOx/9lw1bU69rgn3ztHoDHlTAd6IK7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747490994; c=relaxed/simple;
	bh=nDuJfl4q2dM9uHD2Fv71lfYSoDUE5XLJBp3/XHcllP8=;
	h=To:Subject:From:Message-Id:Date; b=tKfRgcBRMOXVHUvCXGmct+V46/BTn0t7RY1CUXCLLnPWQz1lyjQoeOaOequZ/VhpU9LX4ALmtWOoTR/1J68uPHF0LG1AiJRc1zL4vYZW6oyYtwiusf5OzF717DyUsk6CTuCdDMsKK90NBVCacnt1Z8rplmopfl7wRfaePb9jnCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkd6rlme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkd6rlme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDF0C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747490993;
	bh=nDuJfl4q2dM9uHD2Fv71lfYSoDUE5XLJBp3/XHcllP8=;
	h=To:Subject:From:Date:From;
	b=kkd6rlmeauBfVa3PEHWTLp/10jrXPGPSKGH8G6b0absGLGmE0fmDRZgtsai/gVivX
	 WWwdGSJokYfGSSSYCgXMSlRqncNttbrcB2Br6nabeNTLdkVSvSIYp9QGrotZVopuT5
	 v1ggWFuRgUDG2eMLvU37XyikBTPrtyeXXk6cUeXMaofsBRtbncn3VufVOMpMN0cT4d
	 DODsIeqaTiLw0oWSHfhIvub3IhP/1VK0brCUEC18BNMzWOUTGAy7DCI7dL8QnfJo0s
	 uxiRWLy74D2MbHFQiRGeAvzZQ7PKn/hQol7WoUrtF3JeGY46gM5Hpy52u3m5Rt3qeW
	 xUxqJTkUjBHGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EABAC3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749099357.20420.1457567966660820185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548404d57fca190c04f14faa3428103dd0d45e556b25d0328248969bd8816076
Date: Sat, 17 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747490993
