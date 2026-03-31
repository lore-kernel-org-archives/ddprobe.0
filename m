Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25884386434
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774940694; cv=none; b=u3ltJXJnG1QyUB+yK9OcVFsrZdcyNfoLEVGFXOEaR5PLOU9JM6brXOTCgLOnO0OCdPnBTdAtvrPeWwL3Y2HhbllvrGZ475odxwkgK8CtiRsnCZLNdSuWNHya2Yw3bje96YBcafiO78wI2XYyASf4db0sVtLQP1ZhqhRsWSH9yKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774940694; c=relaxed/simple;
	bh=69HMnjcaVMGC8+JVt7MtcI7HCafHI7BHFpABZ/4g19s=;
	h=To:Subject:From:Message-Id:Date; b=TMJIEzFNAiJgMH6pVD53eZVcD3PpdIGHBILJSgiATpgclpGnLuw5Hb1/9H8xuyTKakl5OB1v2vvv52qnTjJa/jAN6QjUflMpB7ynyzXkvg25nbOIak1F5BirFCwb+9Igkl8pfkxHibrty6JznViqbtUhOg/MNqgko0jzjR0NsU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAmzQYHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAmzQYHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4F4C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774940693;
	bh=69HMnjcaVMGC8+JVt7MtcI7HCafHI7BHFpABZ/4g19s=;
	h=To:Subject:From:Date:From;
	b=NAmzQYHZzIeiNSLX0SovaPHVmiEikH3aVMJvkTxOABcfqJmLaWgv8MdVZiKyB/2Ht
	 RQ9TYK1xgGsn3+lJicJfgDo8EdqZtMJkH5F+JKryBsZpuZhr80M4hCWUGsuQ4IV22V
	 7lmdzUd9N5HE+XU/hD4O4OpS/aJTaZeyYQxs1spCLbrRcNV5CH6qcT0pZOA1EJXnLj
	 qsw6/B7LIrHv8mltbl7nRUjQAtkk02EbAgprxnSY0MNEa0a5iGakJUQ3bjcehOAcHD
	 cvyh47lCr+XtRJi1s8a3IQ8q+UnJD2sRn3vtKrRFzbj54VRTLPcgtugE2O7Ity+QgF
	 tMAYgPQiO3hiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACECFF60CF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177494069362.30379.16691580947556309462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef63c1dae037125687be06aad117e400e8d54f589181fca2d5733847beef77c7
Date: Tue, 31 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774940693
