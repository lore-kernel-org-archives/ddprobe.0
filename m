Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B230EF82
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777499854; cv=none; b=NkMN7MjxB6XCqwX0iN/OlEmiKIHskf/bpX8jOYJ9AOOpBxihtiJ2VDXrHcBkdgOeRh2am25Hax4j3yL0244NmWFHatZvCp/ZE53gOgrwyigFBuDLLgwhgqgJLbSrOi4eQbz6wRNdwAegQCf/Lf0a/oj19UDO+Y9OYiPygknJwAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777499854; c=relaxed/simple;
	bh=XiuCGXDVxbjYFXwcNkzyk0e/RRDm3xk5vHMnNg3DlIk=;
	h=To:Subject:From:Message-Id:Date; b=flkd69STgwxh8RvfcWn+DMJPr0WTkA+ljfbWXOlZZMFAM7Lz82Weo0v/KIVAjWHvgCU5g2yPHy0tTLFG7XNT2AFKIBaP8DTBp8VeWz/OSyU4/UuWgnIeHTWyw+tHEbJPiTGVk4Wh/+H4G0I+5PxRHOJgOYSkDqNqERnH428Zs5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmynJ1/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmynJ1/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7FBC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777499853;
	bh=XiuCGXDVxbjYFXwcNkzyk0e/RRDm3xk5vHMnNg3DlIk=;
	h=To:Subject:From:Date:From;
	b=SmynJ1/Kg4MR1muGKjJlsHLfDLKJBZTtdYi6LPKiUlFzo3wafaGqVDhon2dxtNxoU
	 OcCsyB8Bt9TabIbAG+dbT7V8u/faDDSOG8H927AlR+/5Xkd9S/3kSjLX0SQOtiFNtR
	 Te8JvFsDO6NTbQJg1Sxomfhj6wUPesQlNzedoGCY9XJTv1rcaVGj8wqNympPquBBEM
	 r/PcHptLsj9p318P4ngfggpR4/nPQPMCJ9yN5fda2FFp+pJAwvYekz1Ma5PHSPDvvS
	 xyuRiu2oBdRuUlMD8dtSv3M+fAVQvi24EQ8TTkiLp+HupM8xpqt+sKs+6D8U4UpLoH
	 MlsuAjj4UqYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA66CFF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749985369.29468.398441367957568017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd922c4e171b2813b02ee8a02b0e9147fa873ba4e521d8d02772872af501ae2
Date: Wed, 29 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777499853
