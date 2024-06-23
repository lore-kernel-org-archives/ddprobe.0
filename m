Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E116FC08
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719122543; cv=none; b=YbXYI1sM8lE201xP/tHvPBrJgvOh+xpp5FiHIwyVt2Psuw4nfFH2P1FUWnFNtFSvbphqPAL6UiAB2OnUW6iDO1XzEOx3f8khNxIdZGgHoyEZIbBZGssHtRB8695rt/PiGbazjBaPGyMEef4wv2+vQrNahidvOiJHsYtg05jY7fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719122543; c=relaxed/simple;
	bh=BqK2RgOBOE0xMFaTVWZirrNOQw1djD6zt8eLTXdvFes=;
	h=To:Subject:From:Message-Id:Date; b=gKhSjEKohgrXkXDhafxtkAKgjQMX59o/9+Bw5/VPeBkrjJZasS3FopLim0qn7nIkINUjRN1OofxuOoqIazYs91CkV3fY8uZV0QhDbTNPH0OB2dnZ7EDQWwjA2i2XYKPE1NYhNbFrb8uOST3mvyA/YQSSCamN0v32j8FfCxhywWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lcgf7IJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lcgf7IJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D169AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719122542;
	bh=BqK2RgOBOE0xMFaTVWZirrNOQw1djD6zt8eLTXdvFes=;
	h=To:Subject:From:Date:From;
	b=Lcgf7IJUQ3wCnXNuY9v7hlN7ChTmI8gFMQj8TT4ohLSTXYamr6f7FENRGJ63SG6nn
	 BkjVR27kwH+iRaKr6qbucJ5GQVB7brNRuPrb7wTGevl+L5go3u340T9R7kihTYoKvz
	 C3SlnNhEMXxdx9BU3ljNsG6Vgp8EaVXVpYHlkS/zeP79HXViPO1Zv9I+dFVj4XcxOH
	 0hswn3LgTsZhmpOEzZSrFO+t525UtzlckYUtrTLWVyt5K0dQo5egQBd+yNes0Utc0K
	 Z9xmqRrKznIOzpKks20e62KtPI7FB0Ivz5tEHIrTCMxhCrXsePQFxDZRrcGfvWx/Fu
	 LkUru8A/8j1mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6A8C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912254277.7139.14455765296248027328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90119f7c503cbc0fb5e58e4c18cf040d4e516477e9168967d400549008cbdbe9
Date: Sun, 23 Jun 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719122542
