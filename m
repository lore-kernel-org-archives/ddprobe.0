Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE078313E20
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762181993; cv=none; b=DacF5214BqP8WLw+fSMhhylBU/5xmFHFk1GSOPSpls10Avmm2sb0JE0Z/uN3fSX3HM5hvMzCiTRU5Z/MfKo4pDx/qN9OX7RRPDG0S8LwWaLNQ+xQFMPIu7YQ5f+Qho6sS2RNN+bf0zCgr+WLJWGEqMr1y+c7GmXiXEsCDxNEPWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762181993; c=relaxed/simple;
	bh=fAK24IowOHuoMn2QugjVKsKjSmXgTfEElivBkSzqg/Q=;
	h=To:Subject:From:Message-Id:Date; b=IUL3IpN3+c661+/Atl3JuIQohJmX8vH26P0sPDtl936y5uaxanChrbCHTJIirYJm9wlQw97UD2RYIN2XPRka52szKXGeXr7D6pj9fydPb10L/jxb85xEVCo7zXygHwnVc49lSVA8LmlK+0oEb0YnZlItnuu/9e9tA7cZ9Ou6Av0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUmJ1wZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUmJ1wZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFE1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762181993;
	bh=fAK24IowOHuoMn2QugjVKsKjSmXgTfEElivBkSzqg/Q=;
	h=To:Subject:From:Date:From;
	b=HUmJ1wZutABzX46QIPhGE/m+zw7J0c597XOyI315ttwddgvU/0h7nWts0rdzvrQTw
	 dgMb20DiNYPCsv0yLUHVywL/AuxNbQPgFkg1Eei7mdvCM2e8a34dT1/N2qqXLPAOpu
	 mk3T3YB1JOgjKl/fKKNOTh7JPfiRZCJFi9t9Q7GLWeqFDFsZuPpiGGIP6H5HbNVGtE
	 AOA9s3SSIL1tmE9NVHQD+t20w0H4XBVdLI9vOcAvazKnelIhV+D3vbqJ0iqeIuSO7z
	 hpIUrvTFXKrD1gFImqJF7a9YYTvlHtkIYpwZkGe4+dw+9MRrgyNp9IZNq78oVgnKbC
	 grj3xFt50JnZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9DCCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218199358.18068.1976043614711164160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9116cd654486d80c0bb7eba285bcbbe98996257ac0099e27484d4d32df501bf8
Date: Mon, 03 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762181993
