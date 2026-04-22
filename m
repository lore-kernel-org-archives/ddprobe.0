Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAAB22652D
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776866854; cv=none; b=RFq5bqcbU6WAhS0oIOGcsgFMywXIqhWZESehPeZ6m03mm7vEUlDsqD4aYem9i/bsIhh4R9oQJXpQV4bpiihv0ekpX4K+jSQJJXZX7Z5w2c0ZzuXrEdQQ4cVYBrVuyYw6j7d2cSN1cB6k14HfYnJ7H6h2t0takTPdnyv2yUNxkeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776866854; c=relaxed/simple;
	bh=PGO/XfOV+5toTVyDqch/oWDBIjYSOZuqDRR2TkmFUlM=;
	h=To:Subject:From:Message-Id:Date; b=RER0TFGayRqQzjZJ+l6hd0Dtn6G24UWPVyjcWlfbPV4e2q4GzV5fs6mf44QWk5ZW+h6fXEmOcxsJVCfWBzTb/e5kpcf9o0llRpd6EW3G90wgRmFyeZzqr+mnRp8hu5wDqiM1UHPEX0aoeEOLQxzORYVm/RIsj8ZsBiiGe8/VK9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b83Z5cPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b83Z5cPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FA6C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776866853;
	bh=PGO/XfOV+5toTVyDqch/oWDBIjYSOZuqDRR2TkmFUlM=;
	h=To:Subject:From:Date:From;
	b=b83Z5cPFpjeeW5DpMjvTT/dU9O4EXQ7Dn4N5Nd1agOEQkQmPgsKcqjxDxSDujWH6x
	 JC2KOYjn30a3DBiLNVBgGIZxgFJjDDl64osTvhDSqpeu3sGx7PaaJ1ASYfS56a/qMh
	 0KGCslTyyV6FDniwK9+oESZBW66yZsclrxy/tIJCI7s3GGypwFbeVBz8q/dcMdgMfT
	 J4Jmbq2dS3CBcy7kLliI6+C77jb7pG9kScNs6OJQVna7hVf9EpIt57UjRxzg+ktQ6F
	 i/C1q1R60rf8Q5dsZUEP+2NJOJUcs2ZVhOdJJeYGsCjBOrWH8PToUithwF0AUITkwU
	 Iow066jn2WTYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23FBF9EDDA
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686685369.2047.636891516045840118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142189bf2faf602808abfcd849f271174927782fcc2596aabd67be52b1d168c2
Date: Wed, 22 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776866853
