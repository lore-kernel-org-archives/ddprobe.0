Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E45232456
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736876154; cv=none; b=oy7+IJk9bh0LN/5vu+YoCrCUNt8JqkZUP0DnkYkMkZoAPCrB1dFca1NoOCbq81c6xXl1p9TI4EF8h7gV5EdY3mnIhqdlwvpxziAvxwx9yCiHBPVWYMCL+6++MjbY6y08CM+ZYXImL7ibYdcpl5M+bG8eG0pfbh4G1ZbgWt+Tw9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736876154; c=relaxed/simple;
	bh=/YGzH2WI7RVVeAg/VjGc4gIbP3Z+4Ng94uSSSUqQcbg=;
	h=To:Subject:From:Message-Id:Date; b=fxaoranK3npdtDMJ8JD+M06i5vRdOK8YQ40GEB6Vbw6UE5Dx2JwvCuBazapv6PPQhwvEDCxLxD3zElbzO6qAF0kVHK1iM4BO6m00+sy8hbOWBSB1BzBcwHn5e2+O+GUk3r5Rk/MApNApkqdSyVdYKn/KgoXT+ePwPrup1CkmmZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awZlMuoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awZlMuoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAE4C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736876153;
	bh=/YGzH2WI7RVVeAg/VjGc4gIbP3Z+4Ng94uSSSUqQcbg=;
	h=To:Subject:From:Date:From;
	b=awZlMuoT7TVohkmnwe4Uq2RLcoa21XZYWat1p2l/gUURIk5JdUPB4USrTBUT3ldRm
	 eCdMIBnaQrD28TQb+qzolgSjJd4y0dcZFRUR71SBqdeikTmuW5+5KGFof2Vk+x5hk+
	 DsLsV9lCcwZaOfuCJ6IbA8/FtXjr2A2QfW2Z7+b1P3iBieKuIky0zHnu4seg3XoP62
	 t6l4SXd7XDV+kFXGCpmLYIg6vrUtjW5RXt8sCZw7a+PaWNdxyAD6m/MjKu2jx+yTaH
	 2tMRZaoiKK4cnPePGw7H9Oz0Kic0L5bPnERFsNO1doghnOM7c3FnfV2KKUnBc65Rfa
	 vRkZu3amP4ZVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F40E77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687615360.1970.4347836891952007579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb39ad21a6b8fb8bd5168914e6522575ced275677ddefdd4696f0f8a24f1bf7
Date: Tue, 14 Jan 2025 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736876153
