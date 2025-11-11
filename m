Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E1B221FBF
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762847394; cv=none; b=ds3tse35Oa2aYI/NrL79EXR3D5bVnQMDEFpz/F1fMH0bfaynid/5dLkyBUynNnfzy+iPhyJqItf5yS/WBC3/7zziKBemkPjdnj7L1oORyc7mC+lWsbP8xIR9Q6bXk047xgSvyv82IpJSZL2BJGUd3Uy/ISqKN/XGRoGf0HbzpS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762847394; c=relaxed/simple;
	bh=DLP2cY0YsIwB5KdDDcCT4YgdZ3Er3T5vsGU1qRvExSo=;
	h=To:Subject:From:Message-Id:Date; b=UlAVVikmsqt2Ernoex5hSAi3S+uH/PoMWDKrPBQT0elndqSHrBaivOutYWOuoTRyLBkGJgvRYiLueeztv63YJxBOGv5t7w/q4UVN7Xj56jG/Yp1k9r4RuaZls4eOzZU6mUe7CpUo28YjGm2h+DbdV1tj7EeLOrI/6N3kZ2Rfw3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asxEH/rT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asxEH/rT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5944C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762847393;
	bh=DLP2cY0YsIwB5KdDDcCT4YgdZ3Er3T5vsGU1qRvExSo=;
	h=To:Subject:From:Date:From;
	b=asxEH/rT2L0ZYsCUB1xxqPUu4YhLwKvPWc1EGRka1VWA8GH9dCSeTGIBXmIozV43W
	 sBtkP9v412YVwbpQ0CjRTBxVlUfuPM9D4kf4DF6ETRZ0kPpchwNq8JzYl0p/ekATwD
	 Cj7y59hjoY3uwVimmaE4Lbe4a9ZbqNGiNeFPOFqI7fLi1IWjKjx1kMmQB70ESXSMgy
	 mjoVrvew4C5keFiZHa+vwjEkFegPIrvypkUhxyv993ln1XFAQGxZ+mkCiRfi6RtO/G
	 sgdl4hoz2qUeKckTtbTwpc74HbqEkGJIuv3EzaWoqxOkfykn2PDPMcA7d4xFqaIHws
	 /Tcr/VFmW8xAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950AACCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284739360.19306.18130638058349916010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7ec12b09059a91dcc449dd7319780dab4668a66a40615780e513c30c18b93a
Date: Tue, 11 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762847393
