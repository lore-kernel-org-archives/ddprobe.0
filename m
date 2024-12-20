Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4DD21B8E0
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734718554; cv=none; b=SC4BrjrT3sAzfygWxP8FG2mvWTCa8vPr7WSBwVZ5FNnHU6UEeA55XBF94/Q2fB3Cy+nqblDi9XwWmfj+sWG8qf2Y5ozxFTqbWEyMiyjaTP6dCbB0qvOu3wXILUvDJ1dcG6K689VGZVxJQ+hbPEYFhpHFQ29RicgZohy8KLY++a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734718554; c=relaxed/simple;
	bh=AyNBNnmVi84MDkBtpjEdENpjfcka3yE9PHbQaFjIuwg=;
	h=To:Subject:From:Message-Id:Date; b=aU+PNFDV/TYoElawJnYdDZP+O6E6ktJJT4dfo8qdcqjr5YZf8FctfLvJ4MQtGCPhY5ZEE+eLDfqivVV2RLA71n0Hp/Xgol0EEK3NuRK1IP71LsapYy3WQCOUVqgtC1x6Y0lfAgnsk74BoL9HLFZFAP8Gwxv1swu+5h1xxj6fzOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaOQdDsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaOQdDsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1757C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734718553;
	bh=AyNBNnmVi84MDkBtpjEdENpjfcka3yE9PHbQaFjIuwg=;
	h=To:Subject:From:Date:From;
	b=QaOQdDsctGYCTOPL/oqNYAE3M6AAjVIzLdP9ro7xomH1Dr3dWEey4Ud6FEoeg+h49
	 R47S6aHesMDvMVV6Xrux31pfn2xjLmJi783ASYKHA52kI1fUzok0AoiGFm6bGj9LHs
	 4hCRKPfwzbBi7yQmunMc4krtOr5AG378RvBk6YtA22n/mvS4HXNUjtb+BPCZB73MAG
	 CTX4P1iljkhj8jfT6MxpReH8wv+vp9OOWr7YDucZDvXMQXJ3xcYS2WQDY26OS6jZNi
	 dzmysBhQiZgMPUxoQFqE0GqA5A+iTbUHjXrjePOT4IRj67/rW1iCiRSa691TzTuyKp
	 3VrxxoueIfIHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D733E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471855362.26423.6940555624919481943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 064a933245ac41856f691ffb53e7a143a46ce70c432f98e92120bea66d33f9b2
Date: Fri, 20 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734718553
