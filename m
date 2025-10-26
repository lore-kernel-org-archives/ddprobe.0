Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1943CB661
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761442794; cv=none; b=uWZbquqTGCJdH3vWUHUhd40YmSrJls1+WOgLz04gJ/5aUiUxfsTDfulW7fRDFcm1jfty6JQzE5SYI3SI+NeJECrRDMJq9C4doZlVtpx1Q7yryjwfOvEWOPeWQO+GhSDRpIVkIe2Sfoc2vm+n+qHFTahpVYvXCfW5O+SnTC4cROQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761442794; c=relaxed/simple;
	bh=VhmAwu3iNaYSNHzIzAcLoy5z2dX0Y3a6tsZlL0wvN98=;
	h=To:Subject:From:Message-Id:Date; b=qaUhTN/ifZDKFyCpEbRo1pWiFTlJOs0d34as+8r1gKV9Z7m5yLq2TMX5YhFbAt/8ahGUdRBR6jUBMOtwYF4Rir/xq25ZY++csnmVOtgP2Ij+xuqgKabxfgmwnzRfWUcvkE220WxSPjQwFEksbl0vKVIGyCnhxYYaFTs4fgznXZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZDUamZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZDUamZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17DEC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761442793;
	bh=VhmAwu3iNaYSNHzIzAcLoy5z2dX0Y3a6tsZlL0wvN98=;
	h=To:Subject:From:Date:From;
	b=gZDUamZm6hMLNfCk+zR6k1cYpzYIn0KtnZA23Qyh9GbuDR2ThuM2LQG7bXFy8/EkD
	 VVaknQiU8FA8aOkT73nCHrTKMw/7VugNBRG6yGsQktLbADCuW4FkqrlAkKs+9IRchH
	 fLEL+J1NXhE22OeUik6Pbezje4Pv90Ywc18IXaUBC2ei0bCd47CQfJUOnys5ChKHnz
	 KtvrOXJih3yn5eJnU/DpDDIAmRD7J7+nBOErnYS+Qqf2En3ihbBOOJVgM2n6Cy19jb
	 MTSeS88HmpRpF4S+OiIOz/0P6TkIW3zyeKRhYALXhENwyDN5THvEnHVSJ5HV/EC7vr
	 Df/hERnvmU41A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F072CCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144279357.29190.17373412310599906385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e0c924d503d348e4647ca71fa5fc01277036187e694a8a298898656e527aba
Date: Sun, 26 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761442793
