Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13365306B05
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771698294; cv=none; b=K/43BxiXLnZjWWw4+oH35HI2xzThOFFoLJwP4RriwSPCvuySNSXuqGwccJWkkFz01+afYhABE3kULGGNOS8VMMxEiCHKNyZcUGh/ZaAycfdEwDmj+qkJztBWxQ3irx88ZNHl0Rb3J525+GwQJJQ0KjdK2r9FK1S7JYECe84eDPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771698294; c=relaxed/simple;
	bh=L2LS5GoSuSiJqYEGpqVZ2MfrWuA5YDk4iPO3hx7WGi0=;
	h=To:Subject:From:Message-Id:Date; b=R/tGbHsy0JwjEMywWN8gqnfgVmc+ImOrjE2shFsBPmDov54jV94pRlehgs4Z3boqi4ErNaLHGalvS3xGQL0OECUpuJSrMrBuH2evFi57+FwnyTRLy2uNyqti78qzRCqHSQuJ0Urshp0LZjzlQevgYjUce/P1IzQtakWLEnWMk5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0c0A3f9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0c0A3f9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B19B7C19424
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771698293;
	bh=L2LS5GoSuSiJqYEGpqVZ2MfrWuA5YDk4iPO3hx7WGi0=;
	h=To:Subject:From:Date:From;
	b=O0c0A3f9wN+p5NImn/axo0Jtn8U9F+YMDqkmX+QkDGb37Su54/O3f1zVb6PfgMDk2
	 Ffv41eHtGNHtJ/0PqiVy2CnHKbomUYIOzZpowh60eXNb7DOe+M9Y6q7xBLmCBRvK/k
	 uZDj80lQNClA+Z5v2F0Esf6tJDdlbrEhSsFzJeeK4435NS76q9Yzmw15hHY5z5bPxa
	 rJHscdlKBfb50t1HwITKOmrXN8t5m2ncpKRrFt9gPpr3cCqDyD5NqoeNm0aym8PomU
	 dVYXyr5koPndBXkBCO3Yj3SwJA4sPuVnvkiMMZYZRoa50fmyxweq58dg8ZmuW8bkdl
	 DACv8IZ4e1zMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CECC61DFD
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169829360.19631.11189049223983424621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5712f94a653b470544a6149c3711e4baa8cb1ce3ca17695c0e4c7a8cabfc4f15
Date: Sat, 21 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771698293
