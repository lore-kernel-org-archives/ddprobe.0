Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F67A21ADA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758879594; cv=none; b=BaFJdUsejgGGaeENVAQytkjjsbSmFkNc/nuDwKCVtS66/CjX2Hfu4PpJJ2s8CeXOtrMIsLZACizugcobaQ84gBAbC35VvG83Xp4jg8cLi5SVOncHUhBEfEfhC6l/Axm9MreCqFDXZCehk6us7jy1tpjb8sxz/Wh+dPvHqaKfkKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758879594; c=relaxed/simple;
	bh=W3H+4kQPQY6Fa7hKfDDXXfqjpoYYQEgglwaxD8U0CUM=;
	h=To:Subject:From:Message-Id:Date; b=UOCvXZLSqjFgzowtzOzaH0wHniRBjcBl+Tiw9q5VoEUHHzdXxY+fbMgSrDU6cE+FhrTjAh0K0woNWaWc/Y9JTIpI5b0RuTgBeSRsAwOCB51njmtJ3Hi6t6sEaPHM54MlQZlEbBltnJW288j0rrPfiEOdl+C6gp5QxAq5A0s3//Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBGwdU8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBGwdU8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5734C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758879593;
	bh=W3H+4kQPQY6Fa7hKfDDXXfqjpoYYQEgglwaxD8U0CUM=;
	h=To:Subject:From:Date:From;
	b=iBGwdU8iBeM6lRdtMZFzdmUTcDjx8eZ3q+u09S1kIUNBxKNGOGVD3t8rVG0qa4DSN
	 QbbM8Ub55fhnXCq4XuZqKSSFJ2Hko/1SanPspu+i07xJNeE1SoTW+FbX6eWNe6HWS9
	 PZr7m8eLSjFT/b0PLsIZ9uVdpmor/FDhrYKc/yn/Jg11ze5bQBfBJ0vkMsom19ZHh9
	 dniaPUIt3aapifzdmmhHzbLND4/2t2UGET66RvgACyV9+JXO2l+fSN7PmDKktVD+s8
	 tSGZ8pQiIT89QDtv1/gzJXd58GonJgBWy5ry5nM/vIPD6E7CRrtYgiOA4qaC6qxRLe
	 Oewywd8y1bhgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9222ACAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887959359.29888.4333964957983061236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485aeb8ebf37caf37eccfc8230c032e4bcab31c9cab7669066d373585c114276
Date: Fri, 26 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758879593
