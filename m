Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B8125F78F
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754484594; cv=none; b=jSkxLDPWL4rZhxe4VI3D1cBnLhpGa/npjm4q/sPQrupO8fq3KGB0MNPFHYkPAE42RFxbt3dABQ3n2J7XxBLhYEU/2+WB07HrFHMN39jgKG5M2RRcec9i1w1NsHlIB+Cr60WBp1DYvA6VsAZzM0qdgvUk6Z04IjScLYuUAV2oAGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754484594; c=relaxed/simple;
	bh=C+TxIZtsFhdlKk/fFJeZbQ7gQip9NZCkmNc7uHptVfo=;
	h=To:Subject:From:Message-Id:Date; b=sEq2SX/567Fx/BxSNcalQg6bTQVquOLXSW1CXX5T8pvN+2snIVRGEpGmE5FbTl/4/F7m0CjTEAj1QpLgEI0KfmFKkBmon9U0En7aPYY2akCndo0iiIewaPTZuPhfhmA/M0HJoWzSk7hHsreJHpEJn5cYqfwTHrrH2kClT6xNfpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnakhHKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnakhHKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A28C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754484593;
	bh=C+TxIZtsFhdlKk/fFJeZbQ7gQip9NZCkmNc7uHptVfo=;
	h=To:Subject:From:Date:From;
	b=tnakhHKefQ6gQawpUyVDETdqVGeVM83fPhCM9tfDSFxtdp1z2DxWVsRoVbuuSI7FU
	 /erEFqA35pidId0gS1WrUdeQCmkZQ5Df3wIm6/FwVzNX9KMATXJqDReDF2UHtppjFU
	 bBiyIb+gq6/o7RgJgBJhleyoRjubAqXArZmkSUBpQsJVTp+7UEXQkiB+qhsGD4tIDL
	 4pmLjj9cg8u+4jBLIUpSeOC1Q8C6t1d5Gj6bYNitzl0HUIm7Mcupcek1mnEYxPDT5O
	 lV4YR3/bX6gsguXpe3cAq54JFLdaXMpYIMSTI9Np+3GU51KpsYOhPcKGuElVdn2fCR
	 F7VQDrk6zPZZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D4C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448459357.2539.1069117189336238684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefb20004d9ac59ceeaecee358fe2b6fb07c37410f9d68023209ea172f1cae61
Date: Wed, 06 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754484593
