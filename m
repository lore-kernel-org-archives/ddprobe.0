Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6691B2FDC41
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763504514; cv=none; b=WAfpcjxkx9OaLPMH9RS+zfxA3q5IDjrLoyxT2qe3nx3wWAm6gF2kO0lqRtXb8vtKCzOM/2rInRHyTrHlDIWfyvh/Pst8g2g6KfuF+6xhpwYDKprjrMLcXpYLo8FkNEzzGPN0s7wM9Vt7OSJ0Cpxe5SlKXxgtJHownxmlYZXjJc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763504514; c=relaxed/simple;
	bh=hEcvzLF2CD7WhOAml8EG33QfSprsp3PLFuQgBQ/acg0=;
	h=To:Subject:From:Message-Id:Date; b=nCmT976n5jgtwHutw21UKRWdJm+kYOTrd1hhWoCTg2TBh30Tk7/7p/CinEKGvsiv6QQcXW0q/olMf7EQIHlspW3n6ykdScVTawaRaB9oH3d9oge6DpCv+ShWO1GAhPQ1unDDmVkAihR9RQCM5IfF2UiouRSZ9uxq3xiU6WnFmwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQZ7KLYj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQZ7KLYj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BB1C19422
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763504513;
	bh=hEcvzLF2CD7WhOAml8EG33QfSprsp3PLFuQgBQ/acg0=;
	h=To:Subject:From:Date:From;
	b=rQZ7KLYj4y48QZvRqcRnJM21AucuQSI+umF3QceZOWUB4yhX6pUFiLlXbG0N04XZX
	 Yy9G0Y/h4Q03QRVKhVrcrRoOEhwnJkCCJkhQTphOmCybnimzjBKm90YWFKxX9WRI5t
	 HO8pni8gFW3tW5/iXU90IgOgujSSkFVcRNpZd+AwVW+L+Ec7aknxJ3DKLvGfDBHikV
	 EIAKWsYNy2+ukPrxM6jIc78CXCgiAGfeyvvbsOO6KOQZPPaLfScXGFom6AdqpA+5Ct
	 3j8KaSQJ7D2ds+brXuC774B1TU97jOk6JznpPwvWpQl142Kn+zhvNkQazh49mOju1O
	 j8ig7se7KnnWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E4CF2560
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350451358.32492.6427607198028305337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6717692db9c3afa95be2472d170bed1492e27d9c5ac5759017df33347377ee
Date: Tue, 18 Nov 2025 22:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763504513
