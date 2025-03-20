Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AAE20E32B
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742462394; cv=none; b=hIOmiZJy9isBuMsuSbKIXcQlXn0s9A15NbvgWFSfJDmbHypGKXx0MW79A2M1Tvhmb29MSr0ZA/jz43rfB2+ibstRuGoGseZWLb9rfiOtYFtOK87Gg2tGh5mmRAwt6jekAFvPhPGdu1u9NV5ur7l4BfU14cBi8s7pCVtqUV2TEuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742462394; c=relaxed/simple;
	bh=f0lGbBMZb6iOTw/ufprj/DqxWtlMhQ4/9SYbKzC/Xz0=;
	h=To:Subject:From:Message-Id:Date; b=S10mL5XjZ08imIyAYh+LcmJ/K4ONbzeqCECBizqQtsk39UcTKyQmhwgfitL04etip6vwXOLKnX0Fzb4l4HLZlSZC3ODB54tqmIVYT2eQ7vUt40T2FsrpBFkHLh5YF9L9PWr/v29tWj7Ntkp0wg18Z3F8SsEh75fa2OQ3xXO3rM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLdHqn0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLdHqn0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B078FC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742462393;
	bh=f0lGbBMZb6iOTw/ufprj/DqxWtlMhQ4/9SYbKzC/Xz0=;
	h=To:Subject:From:Date:From;
	b=gLdHqn0vyNNfL3VYqAkIkyMN453lCkHOKTuX8ZEopPO1068JqBX7ycmmRd0Sg+oAo
	 fIB5LlZ5EmhMlZiSUZo84WENcV7g7MwPvekmKJ16oUQ+CN6ZIUyu5Xzp/A5FlD+RuE
	 eaicquZaSNoFR22TgFn2AHK9a34wXjbbXYIN6H0V5C8Xxe2vt0DCK0z6nkrbcQWW5d
	 PTZxcD5VMT66IsHLUVElXX8IRQsX5ZlP69QeHH/XcdmpORB8Rw90WDy9bW+Dg93Xsc
	 C5/tzJEY9EWBFvGLopdIhupfpGqHXIFgErcreR70Gh6K31TFlyQ7QyAvJqgV/Dxryv
	 mt9rjDoyNbMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5E5C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174246239362.7108.13079745677257912541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21546634e6c906468f515159e6a8843b232b2da9f490ef3953fcc942811709dd
Date: Thu, 20 Mar 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742462393
