Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BBBE1607B9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719923123; cv=none; b=u9lkVOFB/r/KSas5htYIvA9Pe7XLU3NMTIZIpDUNW7VsCfdXg6+CohGI6ZUVOg/vKKM7uybhtIWbS1GUg75HO6LIUDhQlZDFY0x56RrPUsLfEo1Jbz+XSPxij10Qod6Fp8nEJzEB1aGt+sUnx8BgZGWtrKostNv24+bDR/m0oS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719923123; c=relaxed/simple;
	bh=bGdLcAFDmeQ4fYoe8LAEWj2yCNYOYLfxtHZo1AssoOY=;
	h=To:Subject:From:Message-Id:Date; b=PergmJxrFNq0Zt1wGfhSr+xVGrfiB2Lg/PrJ/R8lHSq2zstaLAUhFaply+7MXhkst7B7DwZd53r0sMIe+4FhrKm/3YlFu6C0kPrEqK4NeRrBh2BP56VdTkBXAatcglSxbW17JnEpsUQvEwNPa1nEyWRkHX9f7olNhtUoKCWDio0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbqOxp4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbqOxp4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE757C4AF0D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719923123;
	bh=bGdLcAFDmeQ4fYoe8LAEWj2yCNYOYLfxtHZo1AssoOY=;
	h=To:Subject:From:Date:From;
	b=bbqOxp4PP9chHJDn4zPQGxLBDzL/rAArmVOjmizG0vIPMkPgNHzpLIMwFIreh5WhE
	 UCjEwYFDYzvZRcm2jFDRzb5xbsMTxEAu+e02lRhvxACIXojk0lPW4m4e/5jiFI3IIq
	 kJZal5SdmejDRJ1WAf87eK+r5fUT2qcrsbXfH/dZV9LsKF1/Vf1LmnGWNlWf2rbYI+
	 Z4pItOJRC8TGzKYVaqdZfeZhd5HCRSwwjMtrjvehrydHeZQMzquI7sLghYAHeJ3HzN
	 s0UiTFZCS/ZalD0gXGw6nvazffXyNnLlnIq80TaD77szuAd70dqzBkTE7Cwsi8yNx+
	 w95HjKtlitmJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE9B5C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 12:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171992312283.6040.8442070279375567091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfa6565f03491bb776663860711b2888f50a712a9baee2b570db99becfcc1880
Date: Tue, 02 Jul 2024 12:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719923122
