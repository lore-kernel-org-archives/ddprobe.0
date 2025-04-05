Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6691C27
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743830394; cv=none; b=lheKyHTqwu1tuWMkej2ioXADJgXxy/ZFmmsl7iW2aqIvQITDpzd3kvPGtMWUTpFKsbRsFzkQMIoqISsslh3RXjs7hYGckua/xLdsipE8aZAWCEhEcrgxmlvAWdaerlGKQYx/TdyUuvt/nFvb4ZlwrZyc0TP0ttUaZ8CsUKh5qSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743830394; c=relaxed/simple;
	bh=yB8fIVlNz4YzplG6gbytqKCF7WmWygb016fv94aQdV0=;
	h=To:Subject:From:Message-Id:Date; b=EwkQrReNUPG5JKl1Jw1/cziC/AOsAKDj/mFhsiXveLe8qgRR1d3vgbSseu0Gyxk3LL4M7hw2lHlTL+P4RMQML3O//VauD5j7mv6UBCTgpmdgPKb3/HNe9s2bYMmdVXte4p2S+542o3zonav/kavRVQbMI5W4bIbx+w5d/tgrTxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HL9KKQl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HL9KKQl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EE2C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743830393;
	bh=yB8fIVlNz4YzplG6gbytqKCF7WmWygb016fv94aQdV0=;
	h=To:Subject:From:Date:From;
	b=HL9KKQl2ch4lq1cYSevuxuKPU8sUcIQzJTDG7h5GjkP+2bnRKpbRjKRPcSgfWq3pj
	 ZxmS4byEDMrfHov04LlL3cNYo60iLAT/dfeIAkpJ4GowM6XbgMHLQJI6EvzroWdcgk
	 b56UvmURbl7pcACkrpVvLMN9gTmvponlzmqACSmsl8LpMPMEXnkT0nEh/M9TzNvgfQ
	 3BIuplNQtvVimPKhVJsPF2PngFUfbOTtCdzwS0qelZABxEFQJNe9hFfVkO5UmlupxQ
	 LfC0qsg9aTbLZU4kkeTr6DiabyWYgS+Tndq7Yx9lbybTTtIsZu3obOlGBpVkTReIky
	 U7sY4eaTpTwTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C197C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174383039359.12184.486086873097023382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745c70508987c571610f5cd10d537ea3c234ef8fc87dfbbe87f6afaafb04ecaf
Date: Sat, 05 Apr 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743830393
