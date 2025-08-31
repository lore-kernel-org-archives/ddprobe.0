Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D35126E6E3
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756655994; cv=none; b=by7+w+wcfEcZeWbZwqAOYo+E+R/InXdh6a2Z3BoimYvfE1BEVOl3WfbcHz1cT/2I2rtCOY8ApzmX8R7I7gVIP3/WuHRpVfOWIG+BvYf4UY9hVAYSqFcw2M7gdVV5jBVeUGUqkaV6MKR0DRSP0HeyQw44LaI/LPxFUO61W2Yscyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756655994; c=relaxed/simple;
	bh=kkXErQBZsqlBsgk7TKseRPTmKAcPz4SJgAJoYbU9wNw=;
	h=To:Subject:From:Message-Id:Date; b=SS4Di7OaBj8IvbZr4MUZEdlYN9hNdzwN382Y1toUpKVrY2SjQeOi8g4R3Ha9NWFHe8jvqV8Nv+B0vsoK/GWgkAhrgNtLDDPzhzDS9Es2mkI0sZd7w8LHrvhl34IU+K+ZGAmwJothTnnfBXwe0IEG9ESEMIV9qhj7eTZ0752aVqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFSyBTD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFSyBTD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A067DC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756655993;
	bh=kkXErQBZsqlBsgk7TKseRPTmKAcPz4SJgAJoYbU9wNw=;
	h=To:Subject:From:Date:From;
	b=NFSyBTD9fPktJSZ+4f+2uqhp8a4MgEJiefP3NlBSAUkxPH84gieijE4S9e6V7V+jy
	 v3jdTbA1Px+iRO2XmF5BchCrTrYV5xl3uRoyRUVXuNHviSrVS4u/WHOxiSJdXEPZ8k
	 S8zljxumJSRojjbgN9X0x5Xufd5OannYEYiq4jI+m/YkRu1oDLsAprZV2Jguw9mqPo
	 vX9ZHiB9mY6gprrvvgED0PilBR2YOgRIxSVw2dq8rJ4Uepp+fBOrjHyZcJEggAunUg
	 7E16qhO/kklymkzWkllvklokWn6qPA64QHVjcZMTZRfV/EaFYxEb8fOEZFrQdTEtvb
	 /QMNvWFqvkopg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8A7CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665599357.20897.884720850555167738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabcaff1451b37a8ba226b0d54b387162950f04a43022777f902a6f2346804f9
Date: Sun, 31 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756655993
