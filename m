Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E33B3655C9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783941514; cv=none; b=JsZKSY6my5LjqK2sm1e3ESqgxyjloNxc6aOdjwfAW/sZ6FcuHljPQL4nMV+23mvxFaWAouJUBKXRryuFjqLF7ros8KfgMiMKCCc1L5w0IYrCqIR/BWk/pT09deKm/l9Jb/knfGs2e4jWP86kX4PNC1JbqIr8WQtL6aEcTdRm0go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783941514; c=relaxed/simple;
	bh=+vc+f/3vGXAyOGzxdiEesu+yjJqw+0cgtn7RwMX8O2w=;
	h=To:Subject:From:Message-Id:Date; b=bNij4m2+jLCqYTbL/RJy9UthOiqIYfyk8OD+h3vxXvtMJgaPV3PnWu72LbmiMrJ3iimGifF951iTADIvHo7MSZyk9FHzUueEHhyjEI+sUhxB0eEwXulUhJNt85Vneq7UhFLZxvjNlw1tEHuSUSrJ7O4nZf24qJNEVhuyhE7NYfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvQVw43y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvQVw43y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB75CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783941513;
	bh=+vc+f/3vGXAyOGzxdiEesu+yjJqw+0cgtn7RwMX8O2w=;
	h=To:Subject:From:Date:From;
	b=UvQVw43y3Gohy0u0dv5dEalXlpRVsZtgCN6HQroA51sO7NYcG+jS7UJrXDARk5253
	 w7CvMKYlSjOoGWPWBCqgIyvuzA3siOxVBMcI73k8HswdEFjgSyuOUPJ25vAT0k5Fhk
	 Hj/iJZYaJDkucyJrR5IDNzGNocqsxfC4O98RtrMy7KqUnXzyIO9kXvaSjMGWP/3P2x
	 rkz/zCRefJDKMT9FcphXDrVybgotfcjjR8oIJBxTA81Wf+iLfYl2N+TBR6dOTmt5og
	 nuAoPWRTlHHUaVKu5DZyy5FqLZrCQKtXguPvTIiRgwqnngQA+EHOqEFg+4TjjgEOxX
	 EAWrFEYq/W+HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8981C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394151368.9781.2022309714158382198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45cd3093090ac81262ea09fe30f40ae02f749eb41463f9e946dea395e0382c4f
Date: Mon, 13 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783941513
