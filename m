Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4398B219FC
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750576194; cv=none; b=EMEByskf1u1z6u2OIUQgVGacbDBQ4Sco6YHRZNNwWLaW4J7K1g2EoCWs0W+8fhO5580bDyIUZLp0Vt7QcJNr5yOb+RxBgGH4eYkrb6rqSGhlKSpV+QRXDBUFwJ8AjXr1ZkIl5tvbcES9Sozn3eOutysAhVVszh8ac/GCl+Kk46Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750576194; c=relaxed/simple;
	bh=zEKB9cMM3BtZrS4BZOzsQ5fMIAbUx+BbCjvr/4Gvvns=;
	h=To:Subject:From:Message-Id:Date; b=CEuLywwbbrSl/usO1qXnbrEhFPF7aYiNlCsbus9ekB/4C4CofyPUW8IRRcw0ey1wEGiKw8H0edaIZyrOVfFOkQHu5RyD21E3I5X3zBV5BHc9KMOwA2ntFeh0OXGgRnUGjKM1t++4PyNUaqGhYrsz6u+5i+KCsweZbMeJgRVp0v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9ZE2H1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9ZE2H1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1CCC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750576193;
	bh=zEKB9cMM3BtZrS4BZOzsQ5fMIAbUx+BbCjvr/4Gvvns=;
	h=To:Subject:From:Date:From;
	b=G9ZE2H1Ud0gzJdP2vkLdzHP2az1/sWg5aVaZCi+FnZVSRt9YwRGNMMifwxjl89yL/
	 rkQE10CQgT7cuTXBLdTY4Y5XCt8O+wuA+snSetKDPyRQkd0OXBPyx1qNHRsGOMpqZv
	 hhE33T10MxMVIShBPNhY4PWUmPdsDpXBErROYkaPbapr3nQPIV1RZdw7W3XfOot163
	 rGVZ5rOajo4m8Bqp76IMDFAG0Jn+ffQ2Cr6/wbf5yL8KG7JWuoqRP2id1qc2dryTmT
	 tPs+5vojkNdzEBAl2qdPekObOTg9+0MUaOfVnWCK/uDuNmFq4IUXY69jR/s1lSP1sM
	 bPLj7PsZcIspw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A440C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057619360.12492.10339014373151555403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f743788566683a1ea943fc89a932a1f5097324a4576fa0e58727dd30003c2a8
Date: Sun, 22 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750576193
