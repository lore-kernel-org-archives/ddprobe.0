Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170423B8954
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776418054; cv=none; b=g+Hx7ImZd3fvC3nztir/FmXXmMIQ7SdWX6ZfzL4ftINED5QBSsCBnT6+0Anol5M3v2TMt4J1BErPGMnsWaEZPuLPlTpi5+0ZKHuFDtLupmIpiW/PheVRF5A3OS6GUJDIyfh3xeAJzRqyG8RvfBlkBghZafaSLa9rglk1Rh3V1rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776418054; c=relaxed/simple;
	bh=V8V/AhvoQCyfT2YKjiae+1SLiS90SaqVD+/sKXtxB+M=;
	h=To:Subject:From:Message-Id:Date; b=rzQA9FdCmNpshNc1H8Olam885G4g4oob2GRok3iZyzwOX+4o4z/2yONqG7xtDQGMUH2gHZVQsw4IZ6zpsfS7kQ+5eDHQuhfF7tGNrEE41N1Dtt5DgXKXlK1YvBp6LhTDR8T5/GZxei9ZyrmLr65jQui4uQg4xyL8mgVupXx4dz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4GUENAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4GUENAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7ACBC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776418053;
	bh=V8V/AhvoQCyfT2YKjiae+1SLiS90SaqVD+/sKXtxB+M=;
	h=To:Subject:From:Date:From;
	b=K4GUENAP2sYuobp0zt4Eb732BxgMQqC5+6UZxl+mpQo/39ctV2WxuBHVkDc6S1vEv
	 cV7IIityqFoq0zu4ZL/66KUU0JjfdkBHZH7PDHHIXDBOT9JHVvoJJtGGhk/xsK18Bg
	 G4YRgiamwMEmhLw575MlWQRVWil1e63zQfeJyxt0EoOuKUO0zs8BjzF3JUPKSSimsB
	 nEY+kvnAAqa7zNWvPnzWWWnRZ5cQJ6NF191LxE6/V+2nrk17qUjLBCJZtO3dHDKLLR
	 PAx9QNcpRYhRquUjituc01Vbh1L89ntYyxwz6Jf/1xc6iVNDyZKIWk6zfMaJDKcL2q
	 qiwjCgKZCNCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CB8F43688
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641805368.2563.17232816368890583076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aaec25fecf1d207e8d3bd14b2cdaa5d4825cfd3689f68134a8166bf6f8bea89
Date: Fri, 17 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776418053
