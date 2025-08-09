Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AA1197A8E
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754711994; cv=none; b=NA/Lq0QSiG7/xgLfy93ZqJUvfJa2X3g/TXGHPGVBpDT8dSose7Q5ThmymJr1uNNvqWU0Me9MlKVgNSTh9jsK4XF7YvCVIxl1tCmCJ9EC/fyN3Y41SMRwowa/R/XZe+eegKFO6aU5ivVVDapW1vqrHn+oeu65PTqE3GL2v5TCUVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754711994; c=relaxed/simple;
	bh=sCQgFK2MLBR1C0FRCTo8oFYAmQT74QQv6O6aOCOeG/4=;
	h=To:Subject:From:Message-Id:Date; b=Sonew/5yP0KNm/ssz43dk31rAzNdTaAgrfmhv1I9kHFbSKa5K6T2Ngfu3LKFlK+j6l/Z7Nd3V6UWgbt4d9+H5s1p/VilvWIq/eo3Ztf8k8lpTQ3FU5e67tEhfXwRswhRVYrVcMUDem380V5EBTgVwQJ3qohFd69vf/F9yHPuBME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpCuCzOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpCuCzOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D769C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754711993;
	bh=sCQgFK2MLBR1C0FRCTo8oFYAmQT74QQv6O6aOCOeG/4=;
	h=To:Subject:From:Date:From;
	b=ZpCuCzOsvofH7lwsiWF/AO4wv3sgH4bcdOxCDTWLveUUcINqntGMpXRdaipnAcYrL
	 5qbLyno3g9Tjt1fKd6i+414ybdMd0cwoRqRzNAYkZhrW4iCjA0GCGzSgkrr+9ENOTb
	 6cmaz54CWBV+0u/rtM07Nz6GZ/mn51FAWtMzcuvZUPbhwLJ9OwlIU3pFbwJxcFoI7A
	 LBAU/3unrF/IJPgd+sfoaIGM5s/BnHcBfVjXWH/PRtQVmWDIDBG9QBNwlc61ilSvdZ
	 xMTobfFP7m+ylv89i0fNOgrJDLvG9hug2Tb0Dv+LYxCT3dSfqO5mN+Fj1w0xM1rT+n
	 VRbs754IsvfUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E499C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471199357.29437.12336459682982829937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03e96665416825023e8473f703d8fa8020d4b56281061d0dc2c106c601f441b
Date: Sat, 09 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754711993
