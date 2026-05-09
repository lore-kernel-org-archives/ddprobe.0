Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C7F3D649D
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778367514; cv=none; b=ZWTHKs+Fm/GRKcTFw3eD75FxmLYqJhaxt08dHwmo7CXvpkRz64/tDfaDKO8yDUQYjM6hU8j3hFZw6fxWr1enx5j8i49pzBDxbibPJXgcfeBTeGDR8MfVRiF+C4pk0CWKc3j/ss/NJnEhJW54asx+JxKQyZz8Lt8DpIElzpaYKYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778367514; c=relaxed/simple;
	bh=KobLtsYavxsKUpPwYL3boaPQGpLa4AMo4Ikie4H2oJE=;
	h=To:Subject:From:Message-Id:Date; b=XdU0hJzLkAtUf+ec8EyNYcNrAcHOXx6vir7fCafjIJmSqgvdgfx7Bw9XTAb+Fv/+zYNr7tPUbnxJ/bvkUNmSTgeV2WRLuva0mrO0CImJ60H9F0Yv1SfkZ+ugA36HUjlSrkTrL9/ZxqdBP2ukRTpqFweW5UE7WZ7Uw7blqc9dXy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ipw2herr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ipw2herr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20F7C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778367513;
	bh=KobLtsYavxsKUpPwYL3boaPQGpLa4AMo4Ikie4H2oJE=;
	h=To:Subject:From:Date:From;
	b=Ipw2herrUZ/rEbGma7gDe9OhzK+TVZyD+Q/6CdmdUpYVjsh3GtinchdSVZ0Ev1NWu
	 7oRuA3dHQMYMUU6XAvt8MWuToKQEJQYy6Fu8ikBOzXX+z0kpq2Mi78ZWkEHW+d2aKP
	 dObKAf4Q1jFkhW5JnwDAh0IyWi2XQ7s//wZ25ML3QMc/+KI+Ego1xJSmR8JDAeZEQD
	 VQTf9jy4CzrQVr6dMEUYRM4xhw+NmjU3ejaJDMOCNdp7n1Yt8eXFT6bMwNH3LHks+g
	 Obi9uaoqgQ2q+gomt7JCqdOsS1LBozHbsJpcTvo0sjaQ3EkUrX2mUDcsRHyIdycZNS
	 za16/aBAfN7FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AE8CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836751374.3843.1787737037316922703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637e233126f6d4d002ef57661ca774cae128d9acb7890756942974464867aa9f
Date: Sat, 09 May 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778367513
