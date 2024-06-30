Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F718286A6
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719726263; cv=none; b=YfMtvryQKP++vnuTUwgXz0DVBmQ6/GyPLEdFlK5zqCys5hqlSY5BrpIREUYLQL0bMzE8QK8Sww3g0qtKIvDridqHOIFvqa4SnF/J4GzYCYKcTFRfQtNH3n8c5+qesFoPTkyZgfgmKaRzP3Bq3tUKYt+TDggZfgyCSdVlOTaW0zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719726263; c=relaxed/simple;
	bh=DJyhSy4r5QSmtn1cnRKK7S2ZHp5dKDoNTDhqfyGnRsM=;
	h=To:Subject:From:Message-Id:Date; b=DgTFggkpiUrsnQ5ebq0l3jQ3C3lgU7gAl8sHjsqfsUcHwmZsSUAQh8LD1gbQS/xtbpFa5vNaI6IyEwZtYrMLyILBL5stGr+/K0qAXVPX6WzWtRuIYH7m9arohQvcaJLGFSVIjvNj4CRqsEdcCaO+xhHhkWLrw/YsokTgqM30hXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fR/vnMHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fR/vnMHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11BEBC32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719726263;
	bh=DJyhSy4r5QSmtn1cnRKK7S2ZHp5dKDoNTDhqfyGnRsM=;
	h=To:Subject:From:Date:From;
	b=fR/vnMHcX+B1WJ0UzwzkYh/dh5lMeGHB+0wWcB+mc5O1OAcEOrSGhJU11Yqs3sZpT
	 B9MUzVrFKMfesvoxsdsi0l5PetH76l8BiHMtUWs3+crSnnuKxE4o7AYPOM3HbxDOb9
	 pEbO1WvjrJ+npgjJmdw0pVSO9t4zWV5jCZKi2uF8IzrreUOFJL26cTTcFc20jdLlNb
	 uBEQgTr+Ruy9vs/mr0t2syYyIfXnEw5Iv5I7o5HyFqvMZg2RlNcO9NPmnQE11gKjMT
	 YuvbK13h/EQ1gqxnO42fZde4Ntkcfjjlq3P6WPV8FpupijUTfuVCh5lvmc6zD0gJG7
	 G/N0I8JIvQuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6C3EC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 05:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972626290.18196.12734411657812438681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7fe55319b27929d5d685d782cedfff8252916f11045938379aa65e37b1629b
Date: Sun, 30 Jun 2024 05:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719726262
