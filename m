Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418B13EC2D7
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937494; cv=none; b=iVrMySxBI4I8J3IqQSOPs8e8ACjD1Ryau0ct31lJzHv6gIt+nr7YnpFUPnQLZN/FQ0Bx4io069nhdcw1jpxjwNFXoKxVVhgjW+liB3Ztzt9KGdno7Z0mYm2cKvY0E75E0RaW2XA8Kp51Vp45RVfpHRZuja+J2n8ML2CLZlL+g7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937494; c=relaxed/simple;
	bh=rX/DJW/VyftoDClVEt9hggAA1BU4TQFGg7Ekg3YQ1dg=;
	h=To:Subject:From:Message-Id:Date; b=utdgf+wybaLOZfXSCj4BEQt1hPxGOCzvBJK3znzCCvM9aOTQbx3sxOhYOCIUX511V5dBUKD+2/d9Tpcuzn8yDbanUfzUuBN/RN8hWI2VF9n8h/M4jkfo+JZbioSr4b+1FiKKiYhFXHuMf1L8Mza/ekMExwa2Gk13J7YcYJQRGJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qM8gh6ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qM8gh6ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B10C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773937493;
	bh=rX/DJW/VyftoDClVEt9hggAA1BU4TQFGg7Ekg3YQ1dg=;
	h=To:Subject:From:Date:From;
	b=qM8gh6yeFYjBr8I1+YkBBnWca60ejbCWjF+e6Wr9+ZDrs5xQZbdA+A5EeHzH14Apf
	 6yy2CQf6FwcvsLyJjeD2zRbXM8ePXW4OaZapxTenKLDQe7qNcWZ0sV28sdWRVKQhU4
	 Ksxngbo1Gi5F/Fzf3eQwf2HpmS20eAN0pI1yxb6Mi7ms6AM64DPgt08GhXNgHRWh9w
	 8+CHzcz0B2X4PEul0i5UgGi/YPwU7ekTIGlzvsN2k7WAARuN2GlQtiUlKCQaGwdvKv
	 J9gfgPeVB+X77qfujOfmkTSai2lo6uPD6A/QT54sKE9M+84Y0gcrm7fTxry5G/hmOZ
	 v/K0EWDNr9CnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F186109024E
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393749357.31650.16675179420105726896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 177d88d41d4e0e7114ab832373f745f143b0c07f84dd5d2da32348dbac2a2551
Date: Thu, 19 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773937493
