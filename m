Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495D022577D
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738832755; cv=none; b=C17wmneqgiV/DvxNOHdi3M9k4XP7nzrSeHmwTX+A1AA+fYKYfUDrVgBgSeFDbfeWz8qKmKYChJLxFeCVjFNVkmFoCBvBLl61C8Lcymo3aOsl227XjEDZLgXYxlSDI83n5hB9kLnTa4w6Jz1IUAinwkBl3dfP6GU6yeuJ2caLfvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738832755; c=relaxed/simple;
	bh=vMlwwcegoP1Zet53T0/aCm076PNa3wBFRlK+Jz+FzAM=;
	h=To:Subject:From:Message-Id:Date; b=kp5rYEBoKnf/mskh4s7p6pKHpxOk6Cy5aa/qr4kKW5iz57Hd0N+DfZ1D10xOcD/u150Nf1uQwZuYbAMW84QexV3MzVhcB5cvPQcFMCWnCaErVcBUsyzJ4elXz5haG6Ejf2DHtvhpCvsi+NhZ6Yzg9aPmRcr5P8Jw/r8sUnqTBIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDTiKbje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDTiKbje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE69CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738832753;
	bh=vMlwwcegoP1Zet53T0/aCm076PNa3wBFRlK+Jz+FzAM=;
	h=To:Subject:From:Date:From;
	b=nDTiKbjepWFGENInvVv6RtD16awaWdEL7s/lj9U+y9Y75gTpm9wfAqswyzIAwisYp
	 xYTN4h2hRVdvFCJTEDC+Ydtn26LvccgWSj4TmDFW924oDkyQjmQFU6LdLacQiOMXP5
	 MbYmivWpAbUkzH7buLQUO9zqRu8nGHlVZY7+P5ptlX6UT8QzXdhGwN4+arePaSXjC5
	 qpd0kJpnAwbfRV7EqLwdGpJyZq6nMtC4kcslDIKcRLvgAZumc/BPJqSU+9YTzMPjfU
	 Da0MeCbG4NOs5p3chDh6fOQnmi/e2HnzujBZ8Jg3tDt/54eAIBizEE/AS/a8vc4s0h
	 0NPvI9h0+pCZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CB6C02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173883275360.8618.13421265023610872002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697437e0d1e8bbccb6459c1f354dc59bf0ff0a12a9df09785dbc9db4cd2e16de
Date: Thu, 06 Feb 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738832753
