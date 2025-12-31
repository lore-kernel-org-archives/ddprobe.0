Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEFF1A9F82
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767197634; cv=none; b=CmZbjO57gesnNyyX57TgvBhbXnFo24h70CIlVTWo/7EeOYWGafq6spQCxyi73GGYQ3hGdK1eVx+wm5h7tfThPJ3202QXeybOLVrmxpeZupLCBdJz/7KVLcocQmZtdRLTjljO0gGnvlIRdECDrR0Aj6ZFUUNBPO0mDrUu+zGQMWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767197634; c=relaxed/simple;
	bh=FSQdmdXNLD9dq8BD2skxteaWkm1fmAmzT0vQ/P5KyF8=;
	h=To:Subject:From:Message-Id:Date; b=GDzjqTut2JBu/moxWWC9QQarpGlM2ouzPnNYV8VnFKQQl2Sbhzc+gfh9vHJnrtJTgpitIQ4INfYl43Ibd3DCg7aR27belk1fVnHMDu/MVoFRCUiADG2YsADRgt0iyL7X3UeluARF9b+NJlzvvqwdwL8ROxv6zXe1a13x1Hn0bVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6uoRjRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6uoRjRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B3BC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767197633;
	bh=FSQdmdXNLD9dq8BD2skxteaWkm1fmAmzT0vQ/P5KyF8=;
	h=To:Subject:From:Date:From;
	b=R6uoRjRaPcS2r02DZoaHucIG773MzNEMAewTP6MwZa4LJk9X+kVFiVXW2VbTkGwMn
	 NFimgdtVSlbyg3vLMsPvKc4vWbwKLkC9BNvLbdwrSIDN8RaKMbBMibj/L9gjKyzw4C
	 5fHJnk+gUxpXIonWckTsMAT/ALDgNSqOtdGQYhIiCza2hKPQwSV/rgqR8i7M49EF7c
	 26W/D+AEX4jUoA5PpprEuxuaJ4NdgIGIH+DS0HuoYLNijnNW9dRkiUCFGbtmYjXb9B
	 aIVuE0tUWreiSL9gdAVWF+DbB8qcTZUnKQbGxVGBVVSJwNy0AGMStngGhfHFHkRXYC
	 gDvSQKwFd3bTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959FEEE6457
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719763358.10742.11415515418152353104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ed3d7454288fa1a39ebc81571719487dab8644f8780b8dc960ff0420381d65
Date: Wed, 31 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767197633
