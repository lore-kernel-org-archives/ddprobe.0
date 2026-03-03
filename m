Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEE536999D
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772547294; cv=none; b=snSoI6sl9pPPjfP56tgY7SIRDVMerHerlWF7U1vzSZF96nPeg0Q+fbr1X9gxJYL3iLmgtzwqrHxRpsFN7+lhZ9TJFVsYcEWupPWDwQwmCMrOd0LnzEMpbZQ+8+EK7cCrOfsO73D1E6Gp8DugWCLT8FaPbLAYL0PQkyvbgH3gaHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772547294; c=relaxed/simple;
	bh=9JSlMKIvUai/aMEUzHBAN0SIlGRUBzn9jdHly3pvt/A=;
	h=To:Subject:From:Message-Id:Date; b=jog9Hc8N3JfHM+3y7fGK5WzK4BQnlT7djsU2eX8bOgD9aFciVD9mzKYgKBSfQZ6OEX79FPlh+c81Dgd99nJlXYIsrwpWKzZX1vZhYAwFYki4n0dFaiFuaPp+w76Fqu6YCh7pssW0RodRDpN0ocDHydeoE5MNtu9me9kRRjyJF7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rW9Uq4IY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rW9Uq4IY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C898DC2BC9E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772547293;
	bh=9JSlMKIvUai/aMEUzHBAN0SIlGRUBzn9jdHly3pvt/A=;
	h=To:Subject:From:Date:From;
	b=rW9Uq4IY+FdnwxB77RfMr7qH6rw9RUO++nClDTtOkhiHnstYAGug54noFWplj/7lQ
	 VOwB4cFFvxajac6TekJM/HvJ9f7Izeq2gtmc4Fere/SuFdL3zZ9m+X3UkV4fG0YC4I
	 wyqpbSX3iFXrhYfdm37mWXREjRNxy5Icmm3ZpzRhgxLHYefVkcYJ1ppMH0LYN7RbAR
	 5HE0RMqPLr7J6OvRZv4ghbxmhrIgBw9Dz+5jk3oaVTfLXw5a/cQdi7T2dr96yJvdUV
	 ICx42Bk/lEbWAkySyzqK94vmEGSssGg1YM+s+U+vcN3tfVW5/QmicGEBDb2eX4OlXY
	 2xxK1D8EHpecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBFAEC144C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177254729368.21011.17069489413854953826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a312925323075ace8d201640c8c55494b92ff041a61e21f11dd02602bdfc1d1
Date: Tue, 03 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772547293
