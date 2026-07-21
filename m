Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFB4395243
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784614714; cv=none; b=X+k16w5aPBYhmfrhoh4s0/eGeAAPGRAYiwkr+E/5nxjnCgoQgE7G/2YR1USzoVz4r2vm4q15eGaWR/M6PYJEh0xVCzQ8HGYgT0G7hRossim7sZNQcLCRKCJV64VptNnQn66y61+o9TTl2A6BtpcFW3tqQvHcALSFDH+VsS5bDSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784614714; c=relaxed/simple;
	bh=tAWF5dpjMQCyvXHtJRNELtP+Rt+S7VwpfVO+OCxUyfI=;
	h=To:Subject:From:Message-Id:Date; b=XHgS2Ib+g4mOCqtkfLa+3Z4PRPQJY5uiG1C/ib5vwk4HeDn6YsbibLpWzgegkZIJ1hVuCfI4j4V6Moz1j/D9vDcm0A9ByOGBV3PTGS5uchXbP3jdwmoAE+ER8DMugWWmVZM3lCrK0GdjyEs1ICs9PcXUoc3xGwRRNt1oOBM5Q8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qf4YzT05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qf4YzT05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4140C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784614713;
	bh=tAWF5dpjMQCyvXHtJRNELtP+Rt+S7VwpfVO+OCxUyfI=;
	h=To:Subject:From:Date:From;
	b=qf4YzT05IcwpYRlOqQ4x/pDdbnbB8G+jFhGiyOYQOaXoVkTUsqwa3mzNPcO3HHL63
	 kPPRj+oun+LSONY850ce6tzYaBQ3T10wYJUMLzhGdK0w+s0a2+TOBV05ZNpOshmkzW
	 lANuqH7fLapiYUzT7Lt0caYsHFZ9glGT7bhiH3dsj7b90UFrQZcemRuY65WT7CrxgV
	 F/4PZvW5vGtzixQnd42hSNeFbxU9+MtWvwr1TBP9lVojKjnajWtqWO4dSKz+m0pqSW
	 bAnbFQYMSerRc+3VIQcH2FGy4rqMNOnQoLTvpirB3BtA6mSE7FdSDcqh/vhvwXBjHa
	 SoA9bLSrvb0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECC6C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178461471370.9655.13892375940866381259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8c19198989d5eff7b088e263185ad5708bd03794d28945edf4fb720393aab5f
Date: Tue, 21 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784614713
