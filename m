Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 007C817C9E
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707907697; cv=none; b=BhZM9kofPOSw6p6WaeR0OtJK1gsb4f5jnTwi8l2jww3bkiNFNWyHe6gKChAp4Lo03Fe+3bAL3EtueiPTSUexqxVdc1V4MlGwvOQh/BO0AcmnF2yPPuDvf2bFyORU4Ie6nv8al3z9uUzopYoRAZgSh+Xag+qrv8r+BFuHmyt8S2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707907697; c=relaxed/simple;
	bh=HzHZ8b+iD1IYJKEsy+BkEajWsuu0V3HOr+Ey3+iyo/s=;
	h=To:Subject:From:Message-Id:Date; b=SJIeGkg9HlLcLssjIl8bvhBqKWUKQKGuK2zQ8+tvBj50S8lAt/1Xdsfl8R54z+KOPCO4L5BMF7gFjusICdsKPgn5x0O20csxA6MtCbyGWtuRj9jWYaxvM9j6yMAnBfcPbOl2+sBLA3jwBFaNHXHsD6SSHG9LqYXciZN1EVaQHp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2NgvZ4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2NgvZ4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F78C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707907696;
	bh=HzHZ8b+iD1IYJKEsy+BkEajWsuu0V3HOr+Ey3+iyo/s=;
	h=To:Subject:From:Date:From;
	b=V2NgvZ4WjwJ4JSae83rQSunTrYZf+TWhLjhgzpFT04xHzzYUnshoSQ3QuFTT/BAOb
	 jYhbspah/0KlJlmMjhwOklBWl0rxT9aAdL1kqSlyL3VjQd6OpgzaOgzUcwmzKPI71S
	 gGnC1105aK9p3Ik0dGoqLYJA8+qlq7MvaYP54qNnulXplR8lmCSW+uXBhd7/NvH+HD
	 TEjrP3bIzaHtgu6wz+Mqvbr4KS/VxypE3rpqSVl+mwttnWC9iodpHMuyjQh+XeEqS8
	 Aq+5K0DIY2ihOIjyz4ZotkuMx/CbhLPhQRAoOQ3ToqhG6Kqh6MtXfwNoUxkAmLlQc+
	 m6dvSc5NcIX7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61241C48BEB
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170790769636.19377.6423958228056525400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc704bc82f39c604fe5fe767afb29a5a0ede4805c57b51bde89675670102e836
Date: Wed, 14 Feb 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707907696
