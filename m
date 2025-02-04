Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5055E8635E
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738659955; cv=none; b=nBMldowFF/ZwvvxrSu8ePvvvMD0Yo8smtz+IJWEkCyzUmIr2ebkq3XsSJ7IYjMenFxMX2OihEBmcCgOi1xz8lkQ+GkiQUirXozRMIAmSCflsOQNLNIAgcSFdSu3a2wn1lejLqG/D6DNNKEEYETG7fhUTy49GG4CtuaPrlaFvBzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738659955; c=relaxed/simple;
	bh=SprGZ9Zxl8WFheRFRDWZVMcrqqmg7rcVExTfDudDkvg=;
	h=To:Subject:From:Message-Id:Date; b=czkupUdJUSBBiH4QqhX5SRzia4bn0ixXY22qsE8y/fqmgrRHuIwylGW/5m58urTzpD37bKG0IMw47FaDXeswbxf3cFpUReHAN5MWnR8LVJP0QxwOL4mVNGr4j10ztmFbOBbaHKwRtPUKdLiDVgbQqkVok3biTl4HDWhQ5SGbocc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwLxTbN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwLxTbN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF53EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738659953;
	bh=SprGZ9Zxl8WFheRFRDWZVMcrqqmg7rcVExTfDudDkvg=;
	h=To:Subject:From:Date:From;
	b=IwLxTbN872lnq+d6hcvbWMmMu0AZTvEJjYCWigTe2g4wkiYu6TKbXIrZHWHW1oiCI
	 lr9LM5gDjEfsxgudPk1sTch1fWnCtuyIx3Up8mEqFAMsXMp8aWfjeutvfT4DPdT7ut
	 gAhij0WE1cFTBcl14CkLlzYboVH2SvHJw3S4XUcaH7F9OXvMI6Vq8yjoUbjW6iqNGf
	 UAo6+VmnG2CamVp+z2GKIVi+GoE3Qa7y9fVGpT4FWJrsgfaiTyotWyc+fFcVzl4mPJ
	 8zneJ+/7ZDn3Zyyxc34Nb3oOWakgdMj/7JFbib+a3aqNPK9cqDRWlZvvMj9srsPkwU
	 qnG/Iepf15lZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F0C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865995359.1663.12985606261914689448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb762ddac4ca6393cdd53653c0e2efc519cb786fb60581fe7ed3518a21dd8561
Date: Tue, 04 Feb 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738659953
