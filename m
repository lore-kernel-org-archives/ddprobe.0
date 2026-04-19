Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2D84A23
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776640054; cv=none; b=iN5acwFJdoS6s8j/UWsRDdKxsFRBnZfRGEQaADKVsPPsHbOZR9zLew1soRRicedKudFICFBT0sb0kvgEM7vhaCvmbpHQnVEUlhUrQFjJy12OcbLrPTbgaabi6mJNnjo4aCPpQjxlpGlymT1eu3d6rvOpVO2bLcdshMYBgXSYrB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776640054; c=relaxed/simple;
	bh=E2q7BX8l0T1UwBoRnB6J3r/Xc/dhh88fvee8yHwcW8U=;
	h=To:Subject:From:Message-Id:Date; b=mE+YYu9w+DgE5E+9IFnOpyS0LOW4OzW6hNTVvenWaqt2EmEFiDDZkkKwECahNsHDcFru7cdfOLaUmiqksASVS+aqGxdH0FcYX+G4e7mRN0E3Ewsrp6qsD62WxY/utPseJDELOqeAuSTwAYR6cuUfIDOUC2dwWW0g5K6QkdAeM9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccLWg+2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccLWg+2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C1EC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776640053;
	bh=E2q7BX8l0T1UwBoRnB6J3r/Xc/dhh88fvee8yHwcW8U=;
	h=To:Subject:From:Date:From;
	b=ccLWg+2CRWUQ/dylwYoarcD4YQKEI4zVOflY41oHv3R7aAQOU8LJysR2XPR+YyqG7
	 /gfsmE6NwcQj8jB39A7MMipBPcKtsHB92MGDiyv5Mz7VxDp4XkjVuKWUppznohjPOw
	 pTTb0vrMc3zGnlY/dOiB1I/g03yJVjok3mwnW7cCPBKtyUi+el7md2dS8OFoF9CRdc
	 uo4voqYvoAVt0ZW+UeS0xSny3lL4MlLqWOu7sGnG6AlXu5+TInp9hQJZhBj4/A8Yt1
	 QpzhOIAYKpheI9AWRqNt38tQfQJHeIcFU6WTlYHsqjd3Q+WASYDLxWqhGITeRMdJ5i
	 dyrjD4lcmFKGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF27DEA71AD
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664005368.13187.6361013773331504321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6ab012a8a7c7c1cb4782d9ef46948d61481dd58be45d9e261db27c99b6eddb
Date: Sun, 19 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776640053
