Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD514012
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714575743; cv=none; b=a61PwZ2hWARHOUXpzZbAmEtCUw6H7NAk+37a4zMlGAj4siZCKcHKLoH/Dtu9vUdfDONKka2YUKGXK08D5Hr0StkO/gnYukfPdbrOiD0J0aKewI+bBj3W3roqqe0+2VzOoHMJ+ZvVIqWx2NE0Mwz/g3USnxXUrKgOfK60aHhnS5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714575743; c=relaxed/simple;
	bh=qqWDpFYE2cM+mRfw+vFDbJI3a0rPe2Z7dkfj/FH52WA=;
	h=To:Subject:From:Message-Id:Date; b=Y2mKejZvTQ8lD8CpJczSXFLBUSj+bzWGACRLN5HlUbZbmAaXNfOWe9x5oD0HNDro8Fc3gUCPF346yOP66Ens5n0qEvHJxTfLeitOOoNutqiIpum5HWn7Wkn9+psTFhy8Z7F/BsOD8PK+a2g8bL4cTliWUUOyjMDc88sQYM6VGks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWDP3AGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWDP3AGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2F6C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714575742;
	bh=qqWDpFYE2cM+mRfw+vFDbJI3a0rPe2Z7dkfj/FH52WA=;
	h=To:Subject:From:Date:From;
	b=eWDP3AGC4mR3oK7uWvgTnws7GX0A1YCUfJe6/aRGgSwcyjmqybxnTa6WvrAyFfsOq
	 NgRPRZ5e3sJdmDDwTW7aoMkXiE4pt6gLAbl5g3rZACaTsA5GH/XIpZv/2f84FHWPT2
	 NgCQgefmddQGW1I8c1tWwCuIXrRsA+wPMX4d01wYi8E4+10KGMJjKW9v/sLUjNhRpU
	 GywvxYnxVjQ4AEQjtU4DZDkssd6cNso/0lofd03e3zhv0JayXIznR4wAGgDJtI+jdT
	 uFDvxNepYv82MsnSix+YcC5m2ADv+fLebx8xy1RaR4SvyAT2M7noRfXTjvcnmOUQbP
	 Kr3zShWkLiN6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9252C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457574275.29793.7269532246071865364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6a3125371f65550b8d01f356722fe36362ca63df48daf73317edf78f50547b
Date: Wed, 01 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714575742
