Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B101BF33
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784464714; cv=none; b=YqIWEbcYLKCU2rk7Eq7xQ0BQVD3bJF8UtMi0Qm/m/kkbafzqm9FRhk5iYEcoXN9sD4SSCHlt9srG/uxAvL4UFx2XVMgBNEe1Y/8+qyWomPkT20gXfya4OHvbrw9BrIm/W2GWtuxqbWj9RPJ75zbN6CI4PdCD1ZIItlB19hgaFYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784464714; c=relaxed/simple;
	bh=ne+BOGnu/TdHW0Qb/rJ7d7qv9xkG5ynkeVz5wZMhplE=;
	h=To:Subject:From:Message-Id:Date; b=uKN5o9wk28KzPPtWtW42BWXs4RBOZhoQTLiJB3eVEBlf896HWD/Ye7ArILdS7vAihM5ZZ0Mo2nPMPA0BEwXsTcOsyRQP5cnMI0gum1E5fl8hhSwwBsBwkQsmgrpmscZ+jzv98dz+/cQAJ/TevaOPXWpED2DYQ18O4oIR6M+IClM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spqgSVBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spqgSVBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D482CC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784464713;
	bh=ne+BOGnu/TdHW0Qb/rJ7d7qv9xkG5ynkeVz5wZMhplE=;
	h=To:Subject:From:Date:From;
	b=spqgSVBk/1CzYRh4WaHycSYfByUXoEqZe3BG2FRUTjQxtbmLFttxU0vkgE2E7oGiA
	 Hml9v5A/uAvqTQBcEeCiVjGI8SnEJwxXLxB0ZEwYEuggmSkZaWa8FY8TeZasA6x5pu
	 yPkNBCDzRFH4IOZ0cJtp3hpdBvgDskaBxfahnKlH5JAsHqvg0KPO0l/7b4wh15oYaK
	 3q+CdCmiJTrDCdmX6MIeUEjdMsZNRCyljFkOSh0wFtJco1FoXLzXMBkDkPvbQNu/FI
	 Nv6xrbJA2YgkcRWOfKAS8dslUrM64hPOiH4qL66Mbz/dsLvaS0fYnlLsQwoR5BS4uD
	 oOqH5uGqX1FWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB54C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446471368.28386.9436692338133161385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8584b88447128efdd68d3e06ac547b4bfeb7a9ee947f987990327133448eff
Date: Sun, 19 Jul 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784464713
