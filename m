Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E847DC2EA
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766960634; cv=none; b=ZYlTPa7Kq3/k2iCswL9NsiW2bgjt7PMXTccLVqQAXDYmG0siI6ToTXtZqwhIVrZ/eSKAKnooFpmH8F4TYs6QwcnwbuguQKYEUW7LGtH4G37DY0CwUMrhNEofbFlF/47rhJhg234TxkyKQJBYuIqZVmkxxv1yhVt7hhSfrh0B5ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766960634; c=relaxed/simple;
	bh=SaWk4mfhyb715wV7urUBZ3unWGuffgmUwU0fGFOt/uk=;
	h=To:Subject:From:Message-Id:Date; b=qiAeFPpgJafxJZpVP5RCHGn5KZNLfZyunDLvlcGlr+oDiX+hq0/4kgdUzMJ/b6Dj5xr/EvdvJi1ogdbKO0+e9gOKLVUBKlS7K7BKgETs7dLZ1he2oSBguto8ZnKbCDnkgZJuePPQwbBs294oIeV1UtY/XYpudgL/VA6B3cUb+m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfrJ6iUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfrJ6iUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42C8C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766960633;
	bh=SaWk4mfhyb715wV7urUBZ3unWGuffgmUwU0fGFOt/uk=;
	h=To:Subject:From:Date:From;
	b=KfrJ6iUulc+ClzWlcp9ivHjRAEDICghLg+rsGS6dK2BndDWqfhjd41PsqXcQwXm2Z
	 U+2eigsCcE5yMzV6cAL27/JP8n2CNwqms/ZcDYZX2cM31/MdFXKmRX8k3lsVphPWcc
	 DAdTCwn8pYwsYDSVDo50UGx+Fih9NHf3xoKGPPLT2du6Ctsj9NbizjcL9T+A+bbRHP
	 BNMGpwwVA3FP/eQV8IU7BUBHP7gLj6Y+g56GEAqW0IA/s4Tpeb1zmaqMPMnDXkb0Ve
	 +EpHdaHIg724Vkc08ZKACzLaQHv1KKgHtobtHuTUJK/ASBnA95bVU0yqzhskpZCh74
	 eBuvPbxzFBNfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D87AE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696063362.16905.14587123115418179443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5422cf513b5536b8f899cb9670f44005f6d517206c427c2a9c79613cb00e36c
Date: Sun, 28 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766960633
