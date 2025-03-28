Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309A51E1DE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743196794; cv=none; b=EdlCl8dwXzbBw2GLRrmNhr7qFKq155bGQsmy7rkpGx/obRYiEgXTrhDgIn5kynwrha8Tv4QsMef2GVj8MDkMiosMpV4wLOHy6q0W+qWnFXqajT0+YrXwQcBgyYd4TPjkiTzCF5aCN2enu+HLF6bzhIaIWPaXEWZXtHDPbw0cVSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743196794; c=relaxed/simple;
	bh=MeFWw0kJmz//4Qm3kti8lyLcXboOdyARufZ4Tt59b7c=;
	h=To:Subject:From:Message-Id:Date; b=H9SYVcSBFMthtNTroHgWK/hn7xVBcTPfVY8RGfELLvtmGoPHEvp01sYyXxnrYT3b4gnXKmq9UV+vGQGI9cXuQVQ5F43GXhsOeIRqR4xYMU/cSCEDWBQtZnVh7ROUZUshW0pXianhYhGRDkrchU0Bxzc1hKCgQfbCgVePXKwWtwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9ZRv1Cq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9ZRv1Cq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B84C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743196793;
	bh=MeFWw0kJmz//4Qm3kti8lyLcXboOdyARufZ4Tt59b7c=;
	h=To:Subject:From:Date:From;
	b=h9ZRv1CqtzLClgMUzPUkmyp7YJ0u8zcipX+WNL0+8QdgDMMajW6Z3UiiLnvmug2gf
	 Dr+m/KY/0mb5mmpY1DzfvGkHXcXleRvgvFOmA0SEsJ4DGdv2eITiRLkU1/nj+Or/iz
	 OgnQ9pXN9qcYkHM+xgrfFF1iuD5C6w4zns5YXWu2V2AS96+g23JQl0WlTx77vGTD7Q
	 z1ib6NRVOtu+K7r4FWcbefFmazzzCPkZYbXiE7hSCYD4Wf+uuijSd+cUZZmRfV5/Kv
	 b8OAmx+6bk/c93BnK1CafXlU1p4sWTB0AbKla9rrJaDDWfOV1VBYikObq2bEKb22BE
	 xnxwe914sFtbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DB7C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319679362.19890.12446852558685637812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86caf97c908dfff8ad80c61259e743038cfc3824f59aa70cc88e66711b570d67
Date: Fri, 28 Mar 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743196793
