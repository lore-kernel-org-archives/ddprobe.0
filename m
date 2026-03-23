Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D7E37F006
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774301694; cv=none; b=jKCaGx3EfoVCDs6Vr3/Cf3ePdgckDa5WL/tUd9DJ/l7DvAlpZi4HZX84nkHnEfu5XVWo7xfW9ro4zPi7GPXPXMxqo46y3kOm+J1O7cAxqXm1w1tKju5V+Xuf4WtpzqCMTf/F99AAGs4H9dxxjzrlGs3UoUF1lrkX0b5/Bc0rKiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774301694; c=relaxed/simple;
	bh=9tq9FlVsE6Rmr0WVxnM+LVvsoMMJdH7J9VyYVUrH0OU=;
	h=To:Subject:From:Message-Id:Date; b=VKutB6cez16riRKr9fP5eo/VhDVr1VjNSrxyxN3D2vJHDp8uMpk5QX2+H1dMsHb69vUpNqRcaDAUMQIheSaT+rfSPd+Lh5qBQb527ZVDCAXYBeC9/EGWktWS+9Jxo3o32mB6m0SVkfJJK6CUhTr4DBpNTSPy+Vul1c5GCUDisX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSmnxlbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSmnxlbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B025DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774301693;
	bh=9tq9FlVsE6Rmr0WVxnM+LVvsoMMJdH7J9VyYVUrH0OU=;
	h=To:Subject:From:Date:From;
	b=rSmnxlbT6lN4MEb2ayItmnuy29Fa0KTiF2GLOZvUmKDfsHTRDpi2tvqHuTZKRAuzQ
	 Cn2o/gEwepjlb2VTmeGxdtkLa6n5fU2fPtedNwSgVoMIAyzmCtcqqp+vzny+za+cij
	 XnIShowv5WFmqiSfzzAOcALE66cRBSHds3IxJSLMD7/ro1Huash4izs+b3TSe/Eyyx
	 dVIvinL7orO7vOdRfJakTjTonqwV6E598wdaECYNcRvp5kFbQtyneQ4Yv9dzOv7iy0
	 SoB+JeF6qoZIFij8Qb1u0GShq61dX0OuXXO+oHf6TQFzNi85qk6bUV+TM4n+09coBs
	 HAmsYg9BxNzMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D980F4613D
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430169363.24583.13717294227687786407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851548429bc47e66eb919b92e4ae57ed70ae02ac722f2f0f9cd518c21e4deeab
Date: Mon, 23 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774301693
