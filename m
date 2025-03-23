Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3883515ADA6
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742728796; cv=none; b=BFTZ9KGy20zuVB795rg5PP5m66vu69zJrxI6t8ukf4sAB2HWnicXPrdkGfLhO1CM5rDsqGPliX7dutRN7Osm/DkpGLk5c92/+nwvcMh3S2+6PuH+XuUUDm9sH4OvpGk9pOGnWhdGmRoKziWhQzwRSAvuAGYXZtgd2Ym85VbfQvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742728796; c=relaxed/simple;
	bh=a7F9Y+Ng/ZQV0RtGe9NQBv0INR2x6KKhwjv2NXijC/g=;
	h=To:Subject:From:Message-Id:Date; b=TrU05yAUMbK+ARbzdOKhiiYwWLrSYEWfBf8CqGf5yvZQTOeTUSwqDUkT/ZNgsiNuBoVJJngfhjU4vQQySa/BAdKJhKESlo9ATBhxoE8mrIBSAQGisTk7BJ7j5tK0JqonWZXIthnZEEyeeSGVQoC785g4cQzy7Tbi4QFqqcZ2IXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtKsTAn0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtKsTAn0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2506C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742728793;
	bh=a7F9Y+Ng/ZQV0RtGe9NQBv0INR2x6KKhwjv2NXijC/g=;
	h=To:Subject:From:Date:From;
	b=YtKsTAn0bbZ12kq7w2QfutVBPbamtL2LSEeVvl88YnuLWxd6kCffdOl9r049rTWcb
	 eRLOHCQRHxziMx4/QOQuDPz+xHwp6JoVUiObGqE5X8ECfAnsopl0jwPkhSf133obiD
	 c3a4eJDmMT7DlVMgbw0pqeEvuP7tOvOSGmdOhoTSVtqgvYVXvYHXoQg4XKVG/S+Psb
	 xwgEO8ERm4kRZnOids1lvKh0wkdIBs+YtEFeRH4NzNZf7zqY77DP4SExsUtibSO7vc
	 4DvNc1Hq/fSmWuLRoqjmohgb9mQMwqIzPKvgzeQDoOz2jdsTNwcp+O6H0HbBnZhCLz
	 V5WYiQV3O3H3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0A1C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272879360.15909.16410950297257712322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f157a144a624ee6128082edde1c14d6426c63040bd617618ec72fbdad427bec
Date: Sun, 23 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742728793
