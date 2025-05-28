Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FAF1FB3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748401194; cv=none; b=L511hSHbE2gfZySleu/DGKIdgCexicRpLbO8dzXXMFJli/NvRk0XRSfzSk0Wl9TFQe3GZ1R4/k5JJuxNJR5NMinuxERB0WDSiGaKdAT6HURfuhbfqrf0M7opPtpBuBZDtQ9FG71rtvwEBuTM5rX3BTWXJnkPWA5c8q9R88B8SEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748401194; c=relaxed/simple;
	bh=gGmLJjzEiAkUm/xsncy2zetfb+QYf+qd/iq9iWXClcg=;
	h=To:Subject:From:Message-Id:Date; b=GTQzLvscrQGzuK1qMJ32dRJHNE97penMHHvVUqFpFKPJP6RSh5G/ckYOuTgmmSzljE7/iaWl4uJX6kR60GnfPw0u7zsD3HQe5ivGNJwhm0rNYhWSeIdMSbgdny2ftwp3rBTz5XhLvvRZMOPvWA0qsqW4XFxtUDDfWhLnym5c0eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOBIZWrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOBIZWrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A09C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748401193;
	bh=gGmLJjzEiAkUm/xsncy2zetfb+QYf+qd/iq9iWXClcg=;
	h=To:Subject:From:Date:From;
	b=SOBIZWrORwL8HS+WSnmzbBYvP4ipfgZ8l7T9jZLCLyjIvDlsT/9Cfk8H3A6tcwrnO
	 CsgSlq7+RkoxZllcf6NwXXugRR1y1uiWxvBHCkB6HpK11ogW3B8Hm5YOE6sK6XfERw
	 f+C8kc6FuRzuldcbgIN6ZVla1Sku0WS3NiBYmtnCuiHULAXarRjuPUkVh1J9kuv3v8
	 5HLCyy8rWT/BpEJCp5ukPqbtgfrfvVbCor0X8AjMONyXeHce+zXQf0oFgy1Qk4Rmol
	 ocxPl3DKcAHBsNX3cvVrBdqbbyqcOXj34fwtCE/eYWTOl0hca0fUGeF6PHiQ2vaYkC
	 t/O9UZwPN7a6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFCC54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840119358.26882.3970885614240050621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096f37dced8354385d31dc44ef33e66fd55f8055340477dc405b90a0e3205bc4
Date: Wed, 28 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748401193
