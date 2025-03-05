Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A89D20D4F6
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741171734; cv=none; b=ouvK1126AXumkUe9rBy/aQllZKkLFtS3p7YV2sxQc+sXM6RxkXLYJUzlMXnIUJDSHt+3GPuVqaB3ChkWC4lvLDR4L1hTRNq8hQccpsSB80NiIwLjNMK0UtDOabNg3tYCx1KvkAJEwtVFqxYmCbUKUFK6gp8IIBBM3riJYuJRf7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741171734; c=relaxed/simple;
	bh=M0lVAML4RAAXKqYIA0Gw2e+uC11JSIU+eZMGxw4eDsI=;
	h=To:Subject:From:Message-Id:Date; b=vESHpyGjzhl13MCGEzfh01vNhtN16MRgfCVqkrgNJG0mWNWSLfLYwCRq4kOa7skqZ2sPKxV4WKLDMsNXSqaQ/uUf664vnCApPZkJL3YJq2lU+STLBRTVcszSFgdYKsPdTIkrwjWbASJ532P9rkfxSIv/sOEvdBlGnLSaUuOz4YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F56j2buZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F56j2buZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5AC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741171733;
	bh=M0lVAML4RAAXKqYIA0Gw2e+uC11JSIU+eZMGxw4eDsI=;
	h=To:Subject:From:Date:From;
	b=F56j2buZo5QptbeAsPfPNhsm44cFcv71em4SKiJnVdgKwS+NHsQnrKc+/I1CiMb7z
	 S+P9P/vLCdRcnI2uR1GgZIbfsVUDBfne9YOiNvmotD0IBhZJpAL1KoaMwLytne0GfI
	 OQNeFSOcAcbFQCDt52XPv84q4pxPe6n9GuKUOBVDETdQ/f00Y2XxRli87sMCnO/dnF
	 y+KsGRekk32J2nV1O23/8x7nOT/rZh/4dNCF5MEynsOqprvgZylDSEQ9Mdj99uOZrY
	 xWIa75cM4wqjcKGJ+7fwIEsui1NQ6VP90aXgapnqZvYUTJhQVoMkuk2HVKItPmZVY7
	 6O2TPbsPZqfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C74C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174117173359.17425.15627260340099075714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b84db2e62b8fbbe187287a9241775e92834ed4747795376d7fd7933db532e5
Date: Wed, 05 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741171733
