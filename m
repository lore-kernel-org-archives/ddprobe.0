Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488E43EC6B5
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786968634; cv=none; b=cU3lkQMkKe8sCnZcNWgkTV26FiQcDqW9BLF1/NOcC1Hck5Wt/+hAZXRsP7rVSZ2A07jQjgzFm8rhRe0yBJWQdpe+I93bMBUTdoFiewiJJXq8mgYBEak5To89zsp+HdL4hxGcBLa4N6g7NecBrDvqnsOjKYJmyAxY7K06VWbqac8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786968634; c=relaxed/simple;
	bh=TfQsNr5i6Z5j8dEj4vRzF0pSW6VV9JoA6DkaLPnr9qM=;
	h=To:Subject:From:Message-Id:Date; b=oEmWGYY2XCRir+aoHlT+PlxWT+PraX1JoV4Lxcrtmrz3Z27xbOkZyl7pZEqkW6JAuOQjrDQvrVZukfcO0GTdGJl34pXVPXqMP9UYFnSGcQiuu1ijJUySbzrIdF/ulMr81b1HVTwpETjS3NwkyRnJbeKMZx1RuOGxXaTQjEFzREQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJD4QTKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJD4QTKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2391C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786968633;
	bh=TfQsNr5i6Z5j8dEj4vRzF0pSW6VV9JoA6DkaLPnr9qM=;
	h=To:Subject:From:Date:From;
	b=uJD4QTKVAUgVb71H4caYF8D74jtOZbY4mpROLVnU/TBj/S8EbPX0PS1zdGQRDz9Aw
	 IeABgfbu2DgaGHkkHsU6d2C4cU1L+xFE7fxMZ/kw3MRj34LHQwOtXiglB4JrYRHec+
	 k54O0SabrelW4LuIi5QgpCZTMicrYSBPG3CZvBjZpToVy12l9gRJH97naPA0WFGcLj
	 a7x4PgxJ2hu2QhHhr2E6AKw2yTrZO4XogZNGpIslLBRW7pL3vJc4f8PRMa6D4NLsNX
	 EM932fpKpA1ZXKeFAU02quK+8PakTXA0MRoi9LsURrnKQr32X2/Me31HspkoHIHlhw
	 r1ZpXp7FGk+HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACED4C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696863369.12349.872261268851906823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770c3def4930fefdc43d4dacb09a31cf684262a9762eab5478ed9512940b5890
Date: Mon, 17 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786968633
