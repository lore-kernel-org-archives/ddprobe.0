Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437D5361DD5
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784687914; cv=none; b=KcjN6n9XOcah4UgvUNV9MCoRwn5+pnU7L1OLGVjBUfoof6Bbsxjlvn4SsgmJGgsjN9GE5voiKcSdGEUwygzo+ddQLhs6OA8fiFdN/Y3cZuS1LGzdZV2G1aRK0HnbYC00sUHzt5Zb8TdUd5GWx9jLTKu6D6XtPwpNLb2SroiPgvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784687914; c=relaxed/simple;
	bh=To3XVv0tpAgFfhdZ8Nbhp75Ytgz6ghswG80NP6SZx0Q=;
	h=To:Subject:From:Message-Id:Date; b=NFFEP6ZRFS2Z5KsBTyCxDtxbGO/ynN4ts5vUUjfE+8pMbjNTaXDsTvDjLcGfOVoRoXpXPu4OM2W3+d7lWt5/HrjOimhGf/r50HRa2H2MmbB/JCc722Utfaohsy+akaJbc7mzFIxC4Xco+R5xfd4RLs4qeMkcUk9xm30k83t1RlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxaHAPhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxaHAPhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF6BC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784687913;
	bh=To3XVv0tpAgFfhdZ8Nbhp75Ytgz6ghswG80NP6SZx0Q=;
	h=To:Subject:From:Date:From;
	b=FxaHAPhPqyu/Vx0tECEjNuZPCLB5+69P648LrQ/DkCZpjG/KJOHw2P7xCTF9xCvxH
	 oR3GnqWMPOLiWaYgP8wrKcR/KgqAb+41tyt817vx1anMDfiEPxKahpztK5tyankCUB
	 QEiIzkOZRCTP7GZ7LW7lbfLDKXOsN4BRbAnKiDNm1PeGNrkxHTKzXOpKuG9WCJkMx1
	 IrtOuHFow3gFjBxC1wki3ZL4x3+MDlOtN4oEsAUyGIYe3AdvmIUKSB6smmdxigJ8uG
	 DdvyAn0qP7JpwA8xYgifJU2RTebuGBiDTTNiNFIEgKWsrYJ7urypx2n9UdMIIllsFS
	 REJOH/zyeaZSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97ABC4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468791368.14501.13364798233205221765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4d6a4665c970c7e7a12adb2ed804d62baef9b09c61f10c5cafa638ee94b2f9
Date: Wed, 22 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784687913
