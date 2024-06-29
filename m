Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EE22594
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719699263; cv=none; b=R/yTbGCpf1mzM64H1gG77Imvi5v8zzQpw+bEMYoZ+GkKUNA+AoeCr1jFVj9ktM/VRH0CtdwgCfEnS1YGlhjmJd7feVrRVQKmOEW33+Sivb+Ji7lqXctb1TFvhGiZTZzReRURT4j5CTPOYAj4bE6V/rEPqpmsxw2AZeaBfLFMnsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719699263; c=relaxed/simple;
	bh=7xVO6Qtvgi4boOWVwMq2LN4AzPDePMolbwACl2bP5+U=;
	h=To:Subject:From:Message-Id:Date; b=kipKSSsp0pk+Bh+vscAuKym7BjoYKUVKUl7DyKpILasSC39G7g8FS+/XCTbA7aWlCvsCIbRgzikiPnNsrg5EIOEozgsEFLs6qf+VdJFbLihiPY7fkqWgBhF5721XXChG2xrwS86e5l9EPe3G5RnQVG/IYal3M3JLY7tR5ASLvP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IB1Z01QC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IB1Z01QC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD0DC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719699262;
	bh=7xVO6Qtvgi4boOWVwMq2LN4AzPDePMolbwACl2bP5+U=;
	h=To:Subject:From:Date:From;
	b=IB1Z01QCxn30Dq3wzvarHO5T2RQuAcXAI+MKja/f/QWg0fGUAeLecXoaRNtAqjw2V
	 /vfAiD0fZGyx7Lm5WbJ0DsaXdccUx2t84EOVtPH/TT4Cx9Q0BnGvEP5K0VhmVdmixU
	 IuTcG1/OQZQwS9wW4o7kWjpGU4qJz3YHZ/ZkiQcbuV5Fi3QOZJRybSYGz96vZxlIiz
	 J15tWMQmXxBvNp9YSCeae+aeAjggHcQN8bjkF9XGeWRymNy0WM75g5vd+XNYRYlDuX
	 rZirW4KEYbT2H6rY4AQkIKowTBaWAhAs1nzX6TTlIuL2bHBAGf3JGlS1ok24c/HomT
	 opLCk2iHn1bhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F9AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969926276.20101.17519365695997051292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f262fb82767a73d4acbf27c0f095626852a1ded59fa3d5f7b22c54f4027d4c9
Date: Sat, 29 Jun 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719699262
