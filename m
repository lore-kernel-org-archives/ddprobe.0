Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD5419E98C
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738912554; cv=none; b=qC5O1Nj2fES/PvJSxsKQr5yn4aYmcOgK/bLKXPfGLtdQl/2NgUgy54Dbmp+TV7/e9U+Ky3AE7ktYgzHk5REa2jYckkLEMHLcxP4uTRU2/Xhc8moZi//Qc21Cc8HvRIFEEM7lAPJWpgVXePaA6ydD3WkBg7Yz/YThLuMg/cgN1h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738912554; c=relaxed/simple;
	bh=CxPZRHnbkUA0zyunsODbKMgAIU5w0RQhp4sIwzhI078=;
	h=To:Subject:From:Message-Id:Date; b=nuFcJRe/y8aO7a3iCl/5C4fqM+XQDxXqh5YMAhb7cdBA4eZ+EBMh6R4aRxfxBPN/sYb96MOyXDpRRCug2EYC55ZewAl4tosM/cH7ALpxRqTQ+arYwr1+LJnPZ3fFkhXAc7HfsgpLRgmWp7mL627EyNguaIpKNgSQ/rVJS4DZpuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir48dloy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir48dloy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BFFC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738912553;
	bh=CxPZRHnbkUA0zyunsODbKMgAIU5w0RQhp4sIwzhI078=;
	h=To:Subject:From:Date:From;
	b=ir48dloy6VRfWVJFpjUaWyKXQEg38Rz9J84gpXQQznzNqwxIcvODeVMwVp20lpWkp
	 DyQDbvtG/rBSyoYjW5yVzceBNz45szy4HPUNfhUkPI6IGmU9FIEsBZW7qh9uiI83UQ
	 2oydiuCJ9a00jL34fWY3q+jeAWFMmijMs5vbCh2+b7tdzMwBMdGMfFHR0RnCdISut/
	 qbKPd13vIwYErJO6FJMFLyVzOu0qMrMRExbltrYppY65j/Ju7he3QrART5Dvk96yHb
	 T4BC2Wd+w9yIcS1UCLAez3LREX5/MAw6J0Lmucj8Tld71jMTXHvzCJXS4lzm5YumnT
	 ge/jYtxgWtuOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6093C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891255367.5736.14142620895191818984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7cbdf03fbe09b09490800dea6f5f05c78baf6ff0cfc76c3c7be1d90e83ce776
Date: Fri, 07 Feb 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738912553
