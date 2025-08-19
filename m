Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A66D19F135
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755582606; cv=none; b=tyGXlzeKsyvwhjsMmCkZ5uPCqQS6z2R5wrkh6rIDnVZDXUkq5o2cq7uK5XmQXcggfVHtvTz0Re94mj6abKQjhqG9H9uhFQJy0DlaRAgtrmgqYF/2gAVkV3/Luki+9NgJySgvRrtv3qDGB1UMB6nbxrMGQWLprvyAzlhaRGt8mcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755582606; c=relaxed/simple;
	bh=3zj+YgdM56TA9KnMvs8bnRyxVVUWwNftpo8BB4xmJ2M=;
	h=To:Subject:From:Message-Id:Date; b=tSUiW8gcl39Bv999qRXiY2ZMoaJ5MGu4Qc4qXchHI38BfPg4Y+UionFEiSvyxV/mZTxQEeJQEHUnl1UPGBisxLXgFP/sMBgMu/V0961NX8q2P5gtK6eyWpjXEq8CrV7Vbnnj3CdA+UVECjYzdy7pHAVzeQBh8UuJzMnBcDFzKlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+s1B7fO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+s1B7fO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAFBC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755582595;
	bh=3zj+YgdM56TA9KnMvs8bnRyxVVUWwNftpo8BB4xmJ2M=;
	h=To:Subject:From:Date:From;
	b=C+s1B7fOB7YHPrtdhha9P3bE5v+ObHyevwLaZu0BQrF5ajHk34NXhpre/UadKP8Dl
	 HgOgs+JLiuVqlabQEz8vgLDwfcB0PVOmjgQadedycFdC/815m6AEINOY8UBAfZ1c81
	 zBhIUis9J0CRMqD1oKjSPK7bn8Rl2lJi0oHixOF54p1PMRvDw7NddcDbqZEcLD1TNR
	 /u7CQFtB2AYO30q5fIJreFCmwA5Ld1gxFq/6FlHcqzBIqk3bh+gN+U+NAiqmbqBAc+
	 y4SDRuR17kELpjaYYLEYP7DK32txLO/kWKzE9pbdNjkalbet1dChUi48FwZq6e9J5a
	 1dnhemWWPWBaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E131CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558259357.5140.7229956732979209743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ab7b03330fada61967ab363e313074fa0b61638175dc35226ebb8311b4b4e5
Date: Tue, 19 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755582593
