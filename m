Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535F4286D70
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780334674; cv=none; b=Zn2z9lUop3bC22CU1uPUPimPC3v6URzzlJN0Ah+mO5H7n5uzrdcvtnEPxsW3nYkm5sPqvGrRqQQ9C3ycwUDGmPgv4z3opE8Bay3EgQhuqczA/0O0zGzOfRJVxzxoF8saeW5D/SM7oklWeMXIB3JEovU5kFFbarQ8QB6t5TUpXog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780334674; c=relaxed/simple;
	bh=QVEbKNj1uq0C6Un5L1kqEW9vJ9nQ0uOt7ianr3ozlP4=;
	h=To:Subject:From:Message-Id:Date; b=f2C0PsfKpdOnrQkfeReBhJglWkCQ0ZviJnBQEquWiNZQbS4shFSgqq68VZSHbce86ADcGjkIbWh7hi8HnxMho1MeNDNSQf+jm4mwmZo6TKDc24GxQuKUgx0tukKYAoJ+mPsLLZKP8+rEgetPpZ9rFmBp9rS9zO3hysezPE7xziA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToYWbIkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToYWbIkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F48C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780334673;
	bh=QVEbKNj1uq0C6Un5L1kqEW9vJ9nQ0uOt7ianr3ozlP4=;
	h=To:Subject:From:Date:From;
	b=ToYWbIkzVyRbMpyxgsDlm/vGWNMSlANOM9TViP8X9DpkLe38tCnEiFRahDgvi4nXw
	 aZbWFRyHpCgDBFn0eh4VEJHdPWz4Feq85P/kily8ZHNdDtdTLnzl6DN24RvlJ6W0m1
	 pqZmxinSkbnN+1V8Nc4Pj1j0+5L7TOqOMULqaJythJSIjqlqVfQDifnXK/yF7jlDah
	 b1pP5vfn5zYu7Hvd5Fj2sbfUZyHfQ0i+oT7nCaeZ2L0U+XA/AQ4JxAPlQ58j8Ym4rk
	 Gj2b8SzZPIeNNUZ12BRoLI7HqEjx47Dy9VYivQMbL/fbTNyQsMWktFXQ5L2Ajpe8j1
	 Ef8IM649LRSBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5C3CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033467369.23975.4974325835388368569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82325001f4b40d74daecedcb29cda8acabf4107d6213e4bc6b12b086b1e87109
Date: Mon, 01 Jun 2026 17:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780334673
