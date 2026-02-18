Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235A62FDC3C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771419894; cv=none; b=PrYrcdiIx7UCzpbPPZ+vcOjatkCeeoVULBpzykbBewV+6yRkxA0NnYYm2xxGCGcfHhWfFxJclS6YVsWR0cWzn73uMCGyvGC1tyO6vMTtBH2UqTOz+Z+fH5O91exZ25LmBbqBm4iAK7qctOqkqDrD7KvmpBsaY5KkMj83SqOIU+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771419894; c=relaxed/simple;
	bh=zK9FJhHkC2aRFjXy8I3tV+kEAqRnoTSg4To2iHSLtRI=;
	h=To:Subject:From:Message-Id:Date; b=kLNt6tPCWnvQQ/LrxRmPME5lKo3+zXnTYk8kaucHGusjDv/weppVISizYU/GpTSHOkjC0BcnRyNp/sP70QdXTkl0Ckmc9iHvbiidJvIw1ZIuoZnOroql3N1l94XHXGs/yRnvUDdzbz6yyCx8t7jde2eWgt5rfJHjR72tVEG8S/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ugp9IHM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ugp9IHM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CC4C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771419893;
	bh=zK9FJhHkC2aRFjXy8I3tV+kEAqRnoTSg4To2iHSLtRI=;
	h=To:Subject:From:Date:From;
	b=Ugp9IHM1rEExp8QbL8yzHwKtZWCK/cf+RyORrqBRyOgam7iNOiTipwF+2u24rsOCK
	 BigzTfP1cJGT9scpz8RZa3rOaw13Btm0q6sgBHu9jkKp3vlfq9SFCpFs7PAMpMbLDF
	 xkcL51qKkr/KzhynQsLasCICi33uzLVpicJYhnCmxzatqkWYry+AsKSeocVagG/J1d
	 GEODG1XpROxiB7JQWq3KNx2dUIMUEbpvELTVFN0JJFCXRMxt+Rgu6NgU8DesH+mN/w
	 6fu57lwhmNEp/tbLAe2E/aFcsbNhcZaWR01c/CzPAvhBvJ/3FrbEdjKkiADQE2AF43
	 PJUaArrBDTb1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2198E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141989362.32077.6295147268702571835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ac4f20f3eafe29ce8362fa8c1e32a869921088401ccf61686f52495a9e518b
Date: Wed, 18 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771419893
