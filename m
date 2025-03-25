Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9721ADFFB
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742936394; cv=none; b=dpbO3tiYa6Cuhg6b8OJGrJVkmpIy3Ce/7HOh1tycCT8zsgGO/onrVmumKfhxxGEwIY2v0uJniDpDqtHUxCaC4IcacT+gL1IA9lCMQwqsUd0M+2M7eSmj0B6v3/Ozgeck+P9lHWUGwZCNd41Y0rTOOyFtW+U4PitEpG5Q2u8dhfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742936394; c=relaxed/simple;
	bh=J/UoHQFHsbT3E4/RU3DxOLu77U+6OEV6xPJdQMNrDvk=;
	h=To:Subject:From:Message-Id:Date; b=Oi0JRLf99JEqTPCdjTDONCVPcISGyP/vO5CbFskwKruKocwgTCdkH/YEPyvQccub8V+t4CM4WRpnej5j43QftxZZN17DDwJ2bDw/i2VniBHZa1LXTXP5NQdUusq29HgNcknpB2hrBZ37HaSJTafL313GN1HvOx7yECsSRqfq0+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFPDLnxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFPDLnxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF6BC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742936393;
	bh=J/UoHQFHsbT3E4/RU3DxOLu77U+6OEV6xPJdQMNrDvk=;
	h=To:Subject:From:Date:From;
	b=rFPDLnxw1qapO+Hp0jdJhx5PYdrJsOO8hDSC6nMpcQ3ikGT9wN9ZEcVBsC/3LVlI2
	 gXezG0U5Gju48SRH+aVcnc373HOXPvWkRp6kloJvIFdO/8Bgpxm3iZwAk7zXhoMuoH
	 nIdxgrBE1eoPWsngmJUioqnn1en7Q1e/wUxYkodQU44t+DfJW+57+7cBrjqEaAuoKB
	 yinRfrv046d3dAZW6VxoEjSP0XJAnmgk3fenIHz7MeNwnjmTXB64186k4PItfjQmkv
	 JLkbxADfwF1G1BkcPq9EmO/xxEk2kAyUZyoOFOqxIIb09abx6LZ8hxZay5WgCUtd3K
	 UIIvxAp4NrtlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31F4C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174293639365.4497.2937190957975166124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22575be745816d9cbeb0faf5aaa21649d2179e21b09fb4409359b003afbcb014
Date: Tue, 25 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742936393
