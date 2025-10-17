Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0DE332EAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760701794; cv=none; b=jJ17Eda4Us10+SynA1SqgkHTYMVO96qUl9XIZBXTQJqY/fk1l4D87Am/HNVbf4qiAy9iwUP4JE2xTv89Vn9vjPMTBJWDRJ1irCtx4+HBFhS1bm7WKp/A4LRc7YW7DV2TyvfJJAqcORmI53njA3sG8yWPGwr/iclNgHEENVTY+Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760701794; c=relaxed/simple;
	bh=dU4h188g+4R5xE3mYk0/TgyxGsx5qlfmd63cZOviCT8=;
	h=To:Subject:From:Message-Id:Date; b=N4KYDBr+MQQ6o+aJt0gJ6cR2ayvmlZWFzzZFj59zAQqaZT4nNIxha6CuP4bJMgssM8qm7C0xlE2fsz9TuSAahDGDIf0AKTRX7/6mSgzUtYWO8K5R9iyGn8E/Aur2H7p6vXGDSHA9cXyzBrNDU+nqEoikYjaRZf0U0ST0MGMrwx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=idBHvyXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="idBHvyXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F861C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760701793;
	bh=dU4h188g+4R5xE3mYk0/TgyxGsx5qlfmd63cZOviCT8=;
	h=To:Subject:From:Date:From;
	b=idBHvyXt0BrNj3qx/c7KxER8Je+w/OSNv/qLoSl8pfnfr1/T4VOrmh1oL9+V2Ul1S
	 QEX2XPIGCRB2A1bMYeTNiAG/duBjajqtUa0/9hsnWMPvj6mNVMJsK3kTPHJBYTptup
	 QLdDaqNpE+av4qW8+UcNj+yEtmFIReirgPU38oJsGAb1dyDy5Op5/jks7jnE2s3kME
	 6EMMdf//OFEa6/J630U/FqvU9VTtX2rRwehLHGeWFCcPSFt3IHITEHVNjcs1Zbw/zI
	 PKsBLgHhR0ho+8ZClsMR8xL/7wqcUKbxSkrzTy8Kdurd+E4WvwmZ3pm364KuegaEbj
	 lnhaqrUJc1tQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F77FCCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176070179357.31351.4841703338527530242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abea1051af1450053065c636a71dc656877b3f4e1b77596f24c37216ebacc587
Date: Fri, 17 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760701793
