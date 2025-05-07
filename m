Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD0172628
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746637194; cv=none; b=fZq+Yz4Qo33gCk7Si3k0/24l3AqV+5D0CLIGU8MP7Q4uMItVl5Przn+L7Y/1c8hiiLKpcSGKHE0VZpEyT72YWXnKiqDg7FNojRsZp7lmwekuqvUDIc8KfjRivqXgcdqBw1qiqhu5YEjgWTy/6SuL/Zxmqjt49FTxoJVmMO2Np+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746637194; c=relaxed/simple;
	bh=UMlpAuKcZCwUSDfF7mAFVqisvbooiwnXBqXDSeCg7CU=;
	h=To:Subject:From:Message-Id:Date; b=qvZSGxC9cfjCOYZoafRKmTqyDzEW52WLiHZuhheANcxHfzvN5qzhIj5kmafa4ll+ZLfRzYilu4ECGaLe2jtvgBI+dIGJlstxT1WWJpun1iT00cMxaPes3txxyuZ2V22UtJjPlnUvtE+7wDC6m3392/RULuqZgB251yEtBpEG4VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM8EPBM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM8EPBM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D93FC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746637193;
	bh=UMlpAuKcZCwUSDfF7mAFVqisvbooiwnXBqXDSeCg7CU=;
	h=To:Subject:From:Date:From;
	b=dM8EPBM6h8RMCQxhyrevUzFuW2UYiBzWiBeXOpmbU04pxaT+sl1JD0U5rRsTWPuQZ
	 yFgNcOZU+EBpvf7qsvGHqh82S0r5xSYb0lis67D4iPjlhe6t6nAr+a8JHLL+dsjJk3
	 kXiIFK+1A+KPgKI702VqrBEBqGNnHJyC8osopaQTbBfGucbK5+RMdMbOgvYvGmvlPB
	 +ZRNuAl6DonUfEEJMcPdkmmPl7t9nunuVxHyhaQg5EiOF1iOYKRGeGv2W20fLDAmGh
	 IOXf/lhIxGpmrXgLNH/mNR79WD4tqp6h/q+Iv8xMSTVorWB4XEyiO2cbcThKmWPWck
	 LukA9NuFCbNkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E915C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663719357.9105.2041664493168852254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ad8ec17da58b1456632464344419f34163862fe1b57937a7b3bb6b265aea5b
Date: Wed, 07 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746637193
