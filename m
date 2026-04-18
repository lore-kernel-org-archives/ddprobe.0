Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F69345752
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776496054; cv=none; b=Ai3r0rjbMRe1/KkSVGJQrmIuYHubJI01lrpifa6FGXLOHEugmO9h3uFCFJ4BI6DjYWslDeBl+hEIQ+XZ2fYG2eNULjRkg6wrltFi6B2HLY7qj/WLMf0w3Bf3Vd/U0s/eo44ZzBD8/UywFqJChkW4GNQ143fjU4UmwQgSDeqRSFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776496054; c=relaxed/simple;
	bh=CK7B5sWmFCCXrAbm+sG+yrk6OlxgxJGZ5C/tVNsR3nA=;
	h=To:Subject:From:Message-Id:Date; b=e+p6iLnMX1dn0pHihVSwIRwvyr1pkBuyUNKKE0gnk93wxjUhhvcF5ZXfKVQCNCQW0n5pSwE6crtdKIUIw6wLMAHiyPitBSPKMGcyFeRp9tgPbgE7xgH7O+I7dlJQcsT9J9KlqgPeO9xDJhXqdKlvwDnS0StO1Vsk2OLr6vizzzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wb5K8e87; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wb5K8e87"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6E1C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776496053;
	bh=CK7B5sWmFCCXrAbm+sG+yrk6OlxgxJGZ5C/tVNsR3nA=;
	h=To:Subject:From:Date:From;
	b=Wb5K8e878xHpUSzi806+G4/Jvv2CaZkrInwaUiVnp2zflhJwF06RCvhnGKTA4MEKe
	 jW/bpbMEFMjyQqP55Sg357z9FW4Be/ZNxw2aB5l54UxQyJvlMIORl7LXA7OSUk3WMR
	 7bnLOSaXJih5yo9dzhdCD+eEPqWi8wqDcRKDCW1Fkf225S4kF3R0Ri6h0fU9A0Kqwq
	 XzAlG8p93Bk6Qrhpuz6LoZMC3wI7SmQVTmhRsmA48m3Nqcc16xch25WwSeLJowOsjK
	 uXRVznQ4T8jTS5XvE58af6lOVUNm33z2zB1ThnlJ1VhX/n5dCbanVnx6DnK2VXOMvq
	 DtrdnScu5xIUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A941AF8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649605368.20395.3752553907186152556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0448ffec0a55297dc57d5499b9b4e27fa02295609b34ae489b923293102f0940
Date: Sat, 18 Apr 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776496053
