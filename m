Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC23943172
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750990793; cv=none; b=Bg7OR2at35xN0xPcOkQbpOzMQsyP0lI5S8yvq3ct52U1xKfAsBCiG4ABaGJo8t2s8gjk+1+i44zlNyOnI9oaLAAcGuH/5R+cvJPyTsNsrlA+5gV00w7vDGtoOOYdn2p1irvY46bMDYcDQrM4w7o3TWAeavXtDcOUKqQShry/cmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750990793; c=relaxed/simple;
	bh=9r/n+R7k2Q8qVAUxZO3UqoHG7fxCFCZuzt7Pwbbwtfs=;
	h=To:Subject:From:Message-Id:Date; b=sR0UrliXCOsvyVC6WSPG3Q02+SLFx/OCIqUey/KrBEAFhhPgjwkOd+4uQgDmr5KKna9zulHQbVCX0TI7VHkbWZP/RNAQbL7k3kZLBWaiUm20hhBic8CDoL/fvzFtsdHtkR/cUX/mKmneRF8gaCyR0c/CGsNaBm3MPQZ01pmm0/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMfODcEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMfODcEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B088CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750990793;
	bh=9r/n+R7k2Q8qVAUxZO3UqoHG7fxCFCZuzt7Pwbbwtfs=;
	h=To:Subject:From:Date:From;
	b=eMfODcEVqPhFwnNBKSLhw7pYtSCk+vDVhA/rbFjg4owTDEgxzBFxB9xR8INlEw4en
	 PT/Gkl4c4Nl/SwTFvdBGBKGlPOKh+MgELxQu6zlYXJkGBom3u8HA2Kc4lKQlBvVqBu
	 iOBFoRN9DHBc8H2EuSTfIzikFVGGiOxiKXylUiby8ipoQcPyMOwApbfZM4mVIBvdDp
	 MLoWH4E7LJtg7EzSe1MwBTNqF9CLzPhpfxBL8I1W5kqvUDzr9bNp3fqRFJh4uaKMTs
	 VGbtnewHzLEdUAhlRVqAJrwnxnmJzI/7xsoih4+su+WCYdj8PPMRtvm99UYFdRQzns
	 C7FTRPm1HQAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA8AC7EE32
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175099079360.15195.2432928547513425192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 235291b60c1eaa6a48de56be17ec9d6621162be39398553978b6a840c4ff1879
Date: Fri, 27 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750990793
